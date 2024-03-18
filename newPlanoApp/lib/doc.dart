// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';

// class Docpage extends StatefulWidget {
//   const Docpage({Key? key}) : super(key: key);

//   @override
//   State<Docpage> createState() => _DocpageState();
// }

// class _DocpageState extends State<Docpage> {
//   List<Map<String, String>> quotes = [];

//   Widget quoteTemplate(quote) {
//     return Card(
//       margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Text(
//               quote["text"]!,
//               style: TextStyle(
//                 fontSize: 18.0,
//                 color: Colors.grey[800],
//               ),
//             ),
//             SizedBox(
//               height: 6.0,
//             ),
//             Text(
//               quote["author"]!,
//               style: TextStyle(
//                 fontSize: 14.0,
//                 color: Colors.grey[600],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _addPDF() async {
//   FilePickerResult? result = await FilePicker.platform.pickFiles(
//     type: FileType.custom,
//     allowedExtensions: ['pdf'],
//   );

//   if (result != null && result.files.isNotEmpty) {
//     String filePath = result.files.first.path!;

//     if (!filePath.toLowerCase().endsWith('.pdf')) {
//       // Show an error message if the selected file is not a PDF
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text('Invalid File Format'),
//             content: Text('Please select a PDF file.'),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text('OK'),
//               ),
//             ],
//           );
//         },
//       );
//     } else { // Add the selected PDF to the list
//       setState(() {
//         quotes.add({"text": "PDF File", "author": "Unknown"});
//       });
//     }
//   }
// }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Documents',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.red.shade900,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: ElevatedButton(
//               onPressed: _addPDF,
//               child: Text(
//                 'Add PDF',
//                 style: TextStyle(
//                   color: Colors.red.shade900,
//                 ),
//               ),
//             ),
//           ), // Display quotes using quoteTemplate
//           Column(
//             children: quotes.map((quote) => quoteTemplate(quote)).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }




// // import 'package:flutter/material.dart';
// // import 'package:file_picker/file_picker.dart';

// // class Docpage extends StatefulWidget {
// //   const Docpage({Key? key}) : super(key: key);

// //   @override
// //   State<Docpage> createState() => _DocpageState();
// // }

// // class _DocpageState extends State<Docpage> {
// //   List<Map<String, String>> quotes = []; 

// //   Widget quoteTemplate(quote) {
// //     return Card(
// //       margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
// //       child: Padding(
// //         padding: const EdgeInsets.all(12.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.stretch,
// //           children: <Widget>[
// //             Text(
// //               quote["text"]!,
// //               style: TextStyle(
// //                 fontSize: 18.0,
// //                 color: Colors.grey[800],
// //               ),
// //             ),
// //             SizedBox(
// //               height: 6.0,
// //             ),
// //             Text(
// //               quote["author"]!,
// //               style: TextStyle(
// //                 fontSize: 14.0,
// //                 color: Colors.grey[600],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   void _addPDF() async {
// //     FilePickerResult? result = await FilePicker.platform.pickFiles(
// //       type: FileType.custom,
// //       allowedExtensions: ['pdf'],
// //     );

// //     if (result != null && result.files.isNotEmpty) {
// //       String filePath = result.files.first.path!;
      
// //       if (!filePath.toLowerCase().endsWith('.pdf')) {
// //         // Show an error message if the selected file is not a PDF
// //         showDialog(
// //           context: context,
// //           builder: (BuildContext context) {
// //             return AlertDialog(
// //               title: Text('Invalid File Format'),
// //               content: Text('Please select a PDF file.'),
// //               actions: [
// //                 TextButton(
// //                   onPressed: () {
// //                     Navigator.of(context).pop();
// //                   },
// //                   child: Text('OK'),
// //                 ),
// //               ],
// //             );
// //           },
// //         );
// //       } else {
// //         // Add the selected PDF to the list
// //         setState(() {
// //           quotes.add({"text": "PDF File", "author": "Unknown"});
// //         });
// //       }
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           'Documents',
// //           style: TextStyle(
// //             color: Colors.white,
// //           ),
// //         ),
// //         centerTitle: true,
// //         backgroundColor: Colors.red.shade900,
// //       ),
// //       body: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Center(
// //             child: ElevatedButton(
// //               onPressed: _addPDF,
// //               child: Text(
// //                 'Add PDF',
// //                 style: TextStyle(
// //                   color: Colors.red.shade900,
// //                 ),
// //               ),
// //             ),
// //           ),
// //           // Display quotes using quoteTemplate
// //           Column(
// //             children: quotes.map((quote) => quoteTemplate(quote)).toList(),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Docpage extends StatefulWidget {
  const Docpage({Key? key}) : super(key: key);

  @override
  State<Docpage> createState() => _DocpageState();
}

class _DocpageState extends State<Docpage> {
  String? _filePath;

  Future<void> _openFileExplorer() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (result != null) {
        setState(() {
          _filePath = result.files.single.path!;
        });
        // Do something with the selected PDF file
      }
    } catch (e) {
      print("Error while picking the file: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Documents',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _openFileExplorer,
              child: Text(
                'Add PDF',
                style: TextStyle(
                  color: Colors.red.shade900,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
            ),
            if (_filePath != null)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Selected PDF: $_filePath',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
