class PagedResponse{
  int? total;
  int? pageSize;
  int? pageNumber;
  bool? more;

  PagedResponse({this.total, this.pageSize, this.pageNumber, this.more});
}
