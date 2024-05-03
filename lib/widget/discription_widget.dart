import 'package:flutter/material.dart';
import 'package:my_book/view_model/view/data.model.dart';

class DescriptionWidget extends StatelessWidget {
  final DataModel book;

  const DescriptionWidget({required this.book});

  @override
  Widget build(BuildContext context) {
    return book.volumeinfo.description != null
        ? Text(book.volumeinfo.description.toString())
        : Container();
  }
}
