// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:videoplayerapp/domain/videos/models/videos_model.dart';
import 'package:videoplayerapp/domain/videos/videos_repo.dart';

import '../../domain/core/failures/main_failures.dart';

@LazySingleton(as: VideosRepo)
class VideosRepository implements VideosRepo {
  @override
  Future<Either<MainFailure, VideoDataModel>> getVideosList() async {
    try {
      const url = 'https://api.pexels.com/videos/popular?per_page=1';
      final headers = {
        'Authorization':
            'Mf6uut7hBjlVM3AmUbomZyprjdEnxU5KNOD6if2L0ITT5AjawaHlZwnF',
      };

      final response = await http.get(Uri.parse(url), headers: headers);

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final videoData = VideoDataModel.fromJson(jsonData);
        print(videoData);
        if (videoData.videos.isNotEmpty) {
          return Right(videoData);
        } else {
          return const Left(MainFailure.clientFailure());
        }
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.serverFailure());
    }
  }
}
