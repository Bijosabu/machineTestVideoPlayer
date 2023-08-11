import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:videoplayerapp/domain/core/failures/main_failures.dart';
import 'package:videoplayerapp/domain/videos/models/videos_model.dart';
import 'package:videoplayerapp/domain/videos/videos_repo.dart';

part 'videos_event.dart';
part 'videos_state.dart';
part 'videos_bloc.freezed.dart';

@injectable
class VideosBloc extends Bloc<VideosEvent, VideosState> {
  final VideosRepo _videosRepo;
  VideosBloc(this._videosRepo) : super(VideosState.initial()) {
    on<_GetVideos>(
      (event, emit) async {
        emit(
          state.copyWith(
            isError: false,
            isLoading: true,
            videos: null,
          ),
        );
        final Either<MainFailure, VideoDataModel> videosList =
            await _videosRepo.getVideosList();
        emit(videosList.fold((failure) {
          return state.copyWith(
            isLoading: false,
            videos: null,
            isError: true,
          );
        }, (success) {
          return state.copyWith(
            isError: false,
            isLoading: false,
            videos: success,
          );
        }));
      },
    );
  }
}
