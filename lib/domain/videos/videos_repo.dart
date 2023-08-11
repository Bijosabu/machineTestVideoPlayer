import 'package:dartz/dartz.dart';
import 'package:videoplayerapp/domain/core/failures/main_failures.dart';
import 'package:videoplayerapp/domain/videos/models/videos_model.dart';

abstract class VideosRepo {
  Future<Either<MainFailure, VideoDataModel>> getVideosList();
}
