import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_book/controller/repository_book.dart';
import 'package:my_book/view_model/book_details_page.dart';
import 'package:my_book/view_model/view/book_tile.dart';
import 'package:my_book/view_model/view/data.model.dart';

class BookList extends StatefulWidget {
  @override
  _BookListState createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  late List<dynamic> bookList;
  late List<DataModel> bookListing =
      []; // Declare bookList as a late List<dynamic>

  @override
  void initState() {
    super.initState();
    fetchBooks();
    fetchListBooks();
  }

  fetchBooks() async {
    var response =
        await makeHttpCall(); // Use await to get the response from makeHttpCall
    setState(() {
      bookList = jsonDecode(response)['items'];
    });
  }

  fetchListBooks() async {
    var response = await makeHttpData();
    setState(() {
      bookListing = response;
      debugPrint('Number of books loaded: ${bookListing.length}');
      debugPrint('Number of books loaded: ${bookListing.reversed}');
    });
  }

  @override
  Widget build(BuildContext context) {
    // Check if bookList is null or empty before building the ListView
    return Scaffold(
      appBar: AppBar(
        title: Text('List All The Books '),
      ),
      body: ListView.builder(
          itemCount: bookListing == null ? 0 : bookListing.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: BookTile(bookMoodelObj: bookListing[index]),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BookDetailsPage(
                        book: bookListing[index],
                      ),
                    ),
                  );
//                 });
                });
          }),
    );
  }
}


///DIRECT NAVIGATION
///

//  onTap: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) =>
//                           BookDetailsPage(book: bookListing[index])));
//                 }

///STATIC NAVIGATION
