import 'package:flutter/material.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Picture
              Container(height: 20),
              const Text(
                'Personal Info',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              Container(height: 10),
              const Text(
                "Final Year Student\nBachelor's in Computer Science and Engineering\nInternational Islamic University Chittagong",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              Container(height: 20),
              const Text(
                "Contact: 0123456789\nEmail: afrozasultana.me@gmail.com",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Container(height: 30), // Spacing before the button
              _buildBackButton(context), // Back to Home button
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Container(
      width: 200,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context); // Navigate back to the previous page
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text(
          "Back to Home",
          style: TextStyle(color: Colors.deepPurple),
        ),
      ),
    );
  }
}
