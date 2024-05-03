// import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_book/view_model/view/data.model.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionsWidget extends StatelessWidget {
  final DataModel book;

  const ActionsWidget({required this.book});
  @override
  Widget build(BuildContext context) {
    debugPrint("Saleability: ${book.salesInfo.saleability}");

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          book.accesssInfo.webReaderLink != null
              ? FloatingActionButton.extended(
                  label: Text("Read"),
                  heroTag: "webReaderLink",
                  onPressed: () =>
                      launchUrl(Uri.parse(book.accesssInfo.webReaderLink)),
                )
              : Container(),
          book.salesInfo.saleability != null
              ? FloatingActionButton.extended(
                  label: Text("Buy"),
                  heroTag: "saleability",
                  onPressed: () =>
                      launchUrl(Uri.parse(book.salesInfo.saleability)),
                )
              : Container(),
        ],
      ),
    );
  }
}
