extension ImageTypeExtension on String {
  ImageType get imageType {
  if (endsWith('.svg')) {
      return ImageType.svg;
    } else if (startsWith('file://')) {
      return ImageType.file;
    }
  else if (startsWith('http') || startsWith('https')) {
    return ImageType.network;
  }
  else {
      return ImageType.png;
    }
  }
}
enum ImageType { svg, png, network, file, unknown }