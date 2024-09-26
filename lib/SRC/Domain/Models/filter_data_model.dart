class FilterDataModel {
  final dynamic productName;
  final dynamic productImageAddress;
  final dynamic productId;
  bool isSelected;

  FilterDataModel(
    this.productId,
    this.isSelected,
    this.productImageAddress,
    this.productName,
  );
}
