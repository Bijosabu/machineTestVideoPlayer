class VideoDataModel {
  int page;
  int perPage;
  int totalResults;
  String url;
  List<Video> videos;

  VideoDataModel({
    required this.page,
    required this.perPage,
    required this.totalResults,
    required this.url,
    required this.videos,
  });

  factory VideoDataModel.fromJson(Map<String, dynamic> json) {
    List<Video> videos = [];
    if (json['videos'] != null) {
      videos.add(Video.fromJson(json['videos'][0]));
    }

    return VideoDataModel(
      page: json['page'] ?? 0,
      perPage: json['per_page'] ?? 0,
      totalResults: json['total_results'] ?? 0,
      url: json['url'] ?? '',
      videos: videos,
    );
  }
}

class Video {
  int id;
  int width;
  int height;
  String url;
  String image;
  int duration;
  User user;
  List<VideoFile> videoFiles;
  List<VideoPicture> videoPictures;

  Video({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
    required this.image,
    required this.duration,
    required this.user,
    required this.videoFiles,
    required this.videoPictures,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    List<VideoFile> videoFiles = [];
    if (json['video_files'] != null) {
      for (var file in json['video_files']) {
        videoFiles.add(VideoFile.fromJson(file));
      }
    }

    List<VideoPicture> videoPictures = [];
    if (json['video_pictures'] != null) {
      for (var picture in json['video_pictures']) {
        videoPictures.add(VideoPicture.fromJson(picture));
      }
    }

    return Video(
      id: json['id'] ?? 0,
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      url: json['url'] ?? '',
      image: json['image'] ?? '',
      duration: json['duration'] ?? 0,
      user: User.fromJson(json['user']),
      videoFiles: videoFiles,
      videoPictures: videoPictures,
    );
  }
}

class User {
  int id;
  String name;
  String url;

  User({
    required this.id,
    required this.name,
    required this.url,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      url: json['url'] ?? '',
    );
  }
}

class VideoFile {
  int id;
  String quality;
  String fileType;
  int width;
  int height;
  String link;

  VideoFile({
    required this.id,
    required this.quality,
    required this.fileType,
    required this.width,
    required this.height,
    required this.link,
  });

  factory VideoFile.fromJson(Map<String, dynamic> json) {
    return VideoFile(
      id: json['id'] ?? 0,
      quality: json['quality'] ?? '',
      fileType: json['file_type'] ?? '',
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      link: json['link'] ?? '',
    );
  }
}

class VideoPicture {
  int id;
  String picture;
  int nr;

  VideoPicture({
    required this.id,
    required this.picture,
    required this.nr,
  });

  factory VideoPicture.fromJson(Map<String, dynamic> json) {
    return VideoPicture(
      id: json['id'] ?? 0,
      picture: json['picture'] ?? '',
      nr: json['nr'] ?? 0,
    );
  }
}
