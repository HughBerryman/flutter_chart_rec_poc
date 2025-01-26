class SearchItem<T> {

  SearchItem({
    required this.item,
    required this.itemKey,
    required this.displayText,
    this.avatarUrl
  });

  T item;
  String itemKey;
  String displayText;
  String? avatarUrl;
}