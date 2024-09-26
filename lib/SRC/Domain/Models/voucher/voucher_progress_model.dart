class VoucherProgressModel {
  final bool isDone;
  final bool isProgressing;
  final dynamic progressValue;
  final String title;
  final dynamic imagePath;
  final String description;

  VoucherProgressModel({
    required this.isDone,
    required this.isProgressing,
    required this.progressValue,
    required this.imagePath,
    required this.title,
    required this.description,
  });
}
