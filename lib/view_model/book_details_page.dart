import 'package:flutter/material.dart';
import 'package:my_book/view_model/view/data.model.dart';
import 'package:my_book/widget/action_widget.dart';
import 'package:my_book/widget/discription_widget.dart';
import 'package:my_book/widget/information_widget.dart';

//NAVIGATION

class BookDetailsPage extends StatelessWidget {
  final DataModel book;
  const BookDetailsPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.volumeinfo.title!),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InformationWidget(
                book: book,
              ),
              ActionsWidget(
                book: book,
              ),
              DescriptionWidget(
                book: book,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
