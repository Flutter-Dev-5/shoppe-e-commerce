class ToReceivedOrderModel {
  final dynamic orderNumber;
  final String deliveryType;
  final int numberOfItems;
  final List<dynamic> imageList;
  final String statusOfOrder;
  ToReceivedOrderModel(this.deliveryType, this.imageList, this.numberOfItems,
      this.orderNumber, this.statusOfOrder);
}
