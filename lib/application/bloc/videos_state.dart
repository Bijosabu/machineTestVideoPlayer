part of 'videos_bloc.dart';

@freezed
class VideosState with _$VideosState {
  const factory VideosState({
    required VideoDataModel? videos,
    required bool isLoading,
    required bool isError,
  }) = _VideosState;
  factory VideosState.initial() {
    return const VideosState(videos: null, isLoading: false, isError: false);
  }
}
