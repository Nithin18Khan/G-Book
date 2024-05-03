import 'package:flutter/material.dart';
import 'package:my_book/view_model/view/book_list.dart';
// import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: BookList(),
    );
  }
}

//BookListing

//STATIC NAVIGATION
  // routes: <String, WidgetBuilder>{
  //       '/': (BuildContext context) => BookList(),
  //       '/details': (BuildContext context) => BookDetailsPage(
  //             book: bookListing[0],
  //           ),
  //     },
