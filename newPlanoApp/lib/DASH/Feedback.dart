import 'package:flutter/material.dart';

class Feedbackpage extends StatefulWidget {
  const Feedbackpage({Key? key}) : super(key: key);

  @override
  State<Feedbackpage> createState() => _FeedbackpageState();
}

class _FeedbackpageState extends State<Feedbackpage> {
  TextEditingController _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feedback',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Please provide your feedback:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _feedbackController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Enter your feedback here...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle submission of feedback
                String feedback = _feedbackController.text;
                // Here, you can send the feedback to your backend or perform any necessary action
                // For now, let's just print it
                print('Feedback submitted: $feedback');
                // Clear the text field after submission
                _feedbackController.clear();
                // Show a confirmation dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Feedback Submitted'),
                      content: Text('Thank you for your feedback!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade900, // Background color
              ),
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white), // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
