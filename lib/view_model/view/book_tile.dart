import 'package:flutter/material.dart';
import 'package:my_book/view_model/view/data.model.dart';

class BookTile extends StatelessWidget {
  final DataModel bookMoodelObj;

  BookTile({required this.bookMoodelObj});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${bookMoodelObj.volumeinfo.title}',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  // Check if authors is not null before using join
                  if (bookMoodelObj.volumeinfo.authors != null)
                    Text(
                      'Authors(s) : ${bookMoodelObj.volumeinfo.authors!.join(', ')}',
                      style: TextStyle(fontSize: 14),
                    ),
                ],
              ),
            ),
            // Check if imageLinks and thumbnail are not null before accessing
            if (bookMoodelObj.volumeinfo.imageLinks != null &&
                bookMoodelObj.volumeinfo.imageLinks!.thumbnail != null)
              Image.network(
                bookMoodelObj.volumeinfo.imageLinks!.thumbnail!,
                fit: BoxFit.fill,
              ),
          ],
        ),
      ),
    );
  }
}



// class BookTile extends StatelessWidget {
//   // final Map<String, dynamic> book;
//   final DataModel bookMoodelObj;
//   BookTile({required this.bookMoodelObj});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       elevation: 5,
//       margin: EdgeInsets.all(10),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Flexible(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     '${bookMoodelObj.volumeinfo.title}',
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//                   ),
//                   bookMoodelObj.volumeinfo.authors
//                 != null
//                       ? Text('Authors(s) : ${bookMoodelObj.volumeinfo.authors.join('', '') }',
                      
//                       style: TextStyle(fontSize: 14),
//                       ): Text(''),
                                      
//                 ],
//               ),
//             ),
//             bookMoodelObj.volumeinfo.imageLinks.thumbnail != null ? Image.network(bookMoodelObj.volumeinfo.imageLinks.thumbnail, fit: BoxFit.fill ,) :
//             Container(),
//           ],
//         ),
//       ),
//     );
//   }
// }
// }

//    children: <Widget>[
//                   Text(
//                     '${book['volumeInfo']['title']}',
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//                   ),
//                   book['volumeInfo']['authors'] != null
//                       ? Text('Authors(s) : ${book['volumeInfo']['authors']}')
//                       : Container(),
//                 ],