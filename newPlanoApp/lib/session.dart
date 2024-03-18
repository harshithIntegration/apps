// import 'package:flutter/material.dart';

// class Sessionpage extends StatefulWidget {
//   const Sessionpage({Key? key}) : super(key: key);

//   @override
//   State<Sessionpage> createState() => _SessionpageState();
// }

// class _SessionpageState extends State<Sessionpage> {
//   String _selectedValue = 'Select'; // Initial value for dropdown
//   String _textInput = '';
//   List<TimeOfDay> _times = [];
//   List<String> _sessions = [];
//   List<String> _speakers = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Sessions',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.red.shade900,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: DropdownButton<String>(
//                 value: _selectedValue,
//                 onChanged: (newValue) {
//                   setState(() {
//                     _selectedValue = newValue!;
//                   });
//                 },
//                 items: <String>[
//                   'Select',
//                   'Time',
//                   'Session',
//                   'Speakers'
//                 ] // Add your dropdown items here
//                     .map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//               ),
//             ),
//             if (_selectedValue != 'Select')
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Enter $_selectedValue',
//                   ),
//                   onChanged: (value) {
//                     setState(() {
//                       _textInput = value;
//                     });
//                   },
//                 ),
//               ),
//             SizedBox(height: 20),
//             if (_textInput.isNotEmpty)
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Text(
//                       'Session 1 : VALVULAR HEART DISEASE',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.blueAccent,
//                       ),
//                     ),
//                   ),
//                   _buildTable(),
//                 ],
//               ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _submitData();
//         },
//         child: Icon(Icons.add),
//         backgroundColor: Colors.blue,
//       ),
//     );
//   }

//   Widget _buildTable() {
//     return Table(
//       border: TableBorder.all(),
//       columnWidths: {
//         0: FractionColumnWidth(0.25),
//         1: FractionColumnWidth(0.4),
//         2: FractionColumnWidth(0.35),
//       },
//       children: [
//         TableRow(
//           decoration: BoxDecoration(color: Colors.white),
//           children: [
//             _buildTableCell('TIME', isHeader: true),
//             _buildTableCell('SESSION', isHeader: true),
//             _buildTableCell('SPEAKERS', isHeader: true),
//           ],
//         ),
//         if (_selectedValue != 'Select')
//           TableRow(
//             children: [
//               _buildTableCell(''),
//               _buildTableCell(''),
//               _buildTableCell(''),
//             ],
//           ),
//       ],
//     );
//   }

//   Widget _buildTableCell(String value, {bool isHeader = false}) {
//     return Container(
//       padding: EdgeInsets.all(8.0),
//       color: isHeader ? Colors.blue[100] : null,
//       child: Text(
//         value,
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
//         ),
//       ),
//     );
//   }

//   void _submitData() {
//     setState(() {
//       if (_selectedValue == 'Time') {
//         final timeParts = _textInput.split(':');
//         final hour = int.tryParse(timeParts[0]);
//         final minute = int.tryParse(timeParts[1]);
//         if (hour != null && minute != null) {
//           _times.add(TimeOfDay(hour: hour, minute: minute));
//           _sessions.add('');
//           _speakers.add('');
//         }
//       } else if (_selectedValue == 'Session') {
//         _sessions.add(_textInput);
//         _times.add(TimeOfDay(hour: 0, minute: 0));
//         _speakers.add('');
//       } else if (_selectedValue == 'Speakers') {
//         _speakers.add(_textInput);
//         _times.add(TimeOfDay(hour: 0, minute: 0));
//         _sessions.add('');
//       }
//       _textInput = '';
//     });
//   }
// }


import 'package:flutter/material.dart';

class Sessionpage extends StatefulWidget {
  const Sessionpage({Key? key}) : super(key: key);

  @override
  State<Sessionpage> createState() => _SessionpageState();
}

class _SessionpageState extends State<Sessionpage> {
  List<SessionData> sessionDataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sessions',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: DataTable(
            columnSpacing: 16.0,
            columns: [
              DataColumn(label: Text('Time')),
              DataColumn(label: Text('Session')),
              DataColumn(label: Text('Speakers')),
            ],
            rows: sessionDataList.map((sessionData) {
              return DataRow(cells: [
                DataCell(Text(sessionData.time)),
                DataCell(Text(sessionData.session)),
                DataCell(Text(sessionData.speakers)),
              ]);
            }).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // Add a new empty entity to the sessionDataList
            sessionDataList.add(SessionData());
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SessionData {
  String time = '';
  String session = '';
  String speakers = '';
}
