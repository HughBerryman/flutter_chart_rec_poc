import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchResultsListWidget<T> extends StatelessWidget {
  final String searchTerm;
  final List<SearchItem<T>> searchResults;
  final Function(SearchItem<T>) onResultSelected;
  final bool isBusy;
  final IconData listItemIcon;
  final Function()? onLoadMore;

  const SearchResultsListWidget(
      {Key? key,
      required this.searchTerm,
      required this.searchResults,
      required this.onResultSelected,
      this.isBusy = false,
      this.onLoadMore,
      this.listItemIcon = FontAwesomeIcons.solidUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget result;

    if (isBusy && searchResults.isEmpty) {
      result = const Center(child: CircularProgressIndicator());
    } else if (searchResults.isNotEmpty) {
      result = ListView.builder(
          itemCount: totalLength(),
          itemBuilder: (context, index) {
            return (onLoadMore != null && (index > searchResults.length - 1))
                ? Padding(
                    padding: const EdgeInsets.only(
                        bottom: FMIThemeBase.basePadding5),
                    child: Center(
                      child: isBusy
                          ? const CircularProgressIndicator()
                          : TextButton(
                              child: Text(context.coreLocalize.loadMore),
                              onPressed: () {
                                onLoadMore!();
                              },
                            ),
                    ),
                  )
                : getResultCard(index, context);
          });
    } else if (searchTerm.isEmpty) {
      result = const FmiStartSearchWidget(isFullPage: true);
    } else {
      result = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              FontAwesomeIcons.solidFileSlash,
              size: FMIThemeBase.baseIconLarge,
            ),
            Padding(
              padding: const EdgeInsets.only(top: FMIThemeBase.baseGapLarge),
              child: Text(
                context.coreLocalize.noResultFound,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            )
          ],
        ),
      );
    }

    return result;
  }

  Widget getResultCard(int index, BuildContext context) {
    var result = searchResults[index];

    return result.item is Employee
        ? FmiEmployeeInfoWidget(
            padding: const EdgeInsets.only(
              left: FMIThemeBase.basePadding8,
              top: FMIThemeBase.basePadding3,
              bottom: FMIThemeBase.basePadding3,
            ),
            employee: result.item as Employee,
            onTap: () {
              onResultSelected(result);
            })
        : ListTile(
            onTap: () {
              onResultSelected(result);
            },
            leading: ClipOval(
              child: CachedNetworkImage(
                width: FMIThemeBase.baseIconMedium,
                height: FMIThemeBase.baseIconMedium,
                fit: BoxFit.cover,
                imageUrl: result.avatarUrl ?? "",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => FmiAvatar(
                  url: result.avatarUrl,
                  displayName: result.displayText,
                  avatarSize: FmiAvatarSize.medium,
                ),
              ),
            ),
            title: Text(
              result.displayText,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.apply(color: Theme.of(context).colorScheme.onSurface),
            ),
          );
  }

  int totalLength() {
    return searchResults.length + (onLoadMore == null ? 0 : 1);
  }
}
