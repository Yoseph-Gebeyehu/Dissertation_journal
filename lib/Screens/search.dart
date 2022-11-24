import 'package:flutter/material.dart';
import 'package:gallery/Screens/pictues_detail.dart';

import '../Provider/picture_file.dart';

class NewSearch extends SearchDelegate<String> {
  final PicturesFile picture;
  NewSearch(this.picture);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, '');
          } else {
            query = '';
          }
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestion = picture.pics.where((element) {
      return element.name.toLowerCase().contains(query.toLowerCase());
    }).toList();

    return ListView.builder(
        itemCount: suggestion.length,
        itemBuilder: (ctx, i) {
          final queryText = suggestion[i].name.substring(0, query.length);
          final remainingText = suggestion[i].name.substring(query.length);
          return ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(PicturesDetail.routeName,
                  arguments: suggestion[i].id);
            },
            subtitle: Text(suggestion[i].department),
            title: RichText(
              text: TextSpan(
                text: queryText,
                style: TextStyle(
                  fontSize: 17,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                children: [
                  TextSpan(
                    text: remainingText,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: ExactAssetImage(
                suggestion[i].image,
              ),
            ),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestion = picture.pics.where((element) {
      return element.name.toLowerCase().contains(query.toLowerCase());
    }).toList();

    return ListView.builder(
      itemCount: suggestion.length,
      itemBuilder: (ctx, i) {
        final queryText = suggestion[i].name.substring(0, query.length);
        final remainingText = suggestion[i].name.substring(query.length);
        return ListTile(
          onTap: () {
            showResults(context);
          },
          subtitle: Text(suggestion[i].department),
          title: RichText(
            text: TextSpan(
              text: queryText,
              style: TextStyle(
                  fontSize: 17,
                  color: Theme.of(context).colorScheme.secondary,
                  fontFamily: 'QuickSand'),
              children: [
                TextSpan(
                  text: remainingText,
                  style: const TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontFamily: 'QuickSand'),
                ),
              ],
            ),
          ),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: ExactAssetImage(
              suggestion[i].image,
            ),
          ),
        );
      },
    );
  }
}
