import 'package:flutter/material.dart';
import 'package:my_book/view_model/view/data.model.dart';

class InformationWidget extends StatelessWidget {
  final DataModel book;

  const InformationWidget({required this.book});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              book.volumeinfo.title != null
                  ? Text(
                      '${book.volumeinfo.title}',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  : Container(),
              book.volumeinfo.subtitle != null
                  ? Text(
                      '${book.volumeinfo.subtitle}',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    )
                  : Container(),
              book.volumeinfo.authors != null
                  ? Text(
                      'Author(s): ${book.volumeinfo.authors!.join(", ")}',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  : Container(),
              book.volumeinfo.publisher != null
                  ? Text(
                      "Published by: ${book.volumeinfo.publisher}",
                      style:
                          TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                    )
                  : Container(),
              book.volumeinfo.publishedDate != null
                  ? Text(
                      "Published on: ${book.volumeinfo.publishedDate}",
                      style:
                          TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                    )
                  : Container(),
            ],
          ),
        ),
        book.volumeinfo.imageLinks!.thumbnail != null
            ? Image.network(
                book.volumeinfo.imageLinks!.thumbnail.toString(),
                fit: BoxFit.fill,
              )
            : Container(),
      ],
    );
  }
}
