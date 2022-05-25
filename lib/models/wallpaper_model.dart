class WallpaperModel {
  String url;
  String photographer;
  String photographerUrl;
  int photographerId;
  SrcModel src;

  WallpaperModel({
    required this.url,
    required this.photographer,
    required this.photographerId,
    required this.photographerUrl,
    required this.src,
  });

  factory WallpaperModel.fromMap(Map<String, dynamic> parsedJson) {
    return WallpaperModel(
        url: parsedJson["url"],
        photographer: parsedJson["photographer"],
        photographerId: parsedJson["photographer_id"],
        photographerUrl: parsedJson["photographer_url"],
        src: SrcModel.fromMap(parsedJson["src"]));
  }
}

class SrcModel {
  String original;
  String portrait;
  String large;
  String landscape;
  String medium;

  SrcModel({
    required this.original,
    required this.portrait,
    required this.landscape,
    required this.large,
    required this.medium,
  });

  factory SrcModel.fromMap(Map<String, dynamic> srcJson) {
    return SrcModel(
        original: srcJson["original"],
        portrait: srcJson["portrait"],
        large: srcJson["large"],
        landscape: srcJson["landscape"],
        medium: srcJson["medium"]);
  }
}
