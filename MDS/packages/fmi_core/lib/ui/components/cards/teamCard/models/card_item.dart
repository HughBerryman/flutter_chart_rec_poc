class CardItem {
  String label;
  int? count;
  final Function()? onTapped;

  CardItem({required this.label, this.count = 0, this.onTapped});
}
