import 'package:flutter/material.dart';
import 'package:myresume/personal_info.dart';
import 'package:myresume/skills.dart';
import 'package:myresume/education.dart';
import 'package:myresume/experience.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Afroza Sultana",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                Container(height: 10),
                const Text(
                  "0123456789\nafrozasultana.me@gmail.com",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Container(height: 30),
                _buildButton("Personal Info", Colors.white, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PersonalInfoPage()),
                  );
                }),
                Container(height: 15),
                _buildButton("Skills", Colors.white, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SkillsPage()),
                  );
                }),
                Container(height: 15),
                _buildButton("Education", Colors.white, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EducationPage()),
                  );
                }),
                Container(height: 15),
                _buildButton("Experience", Colors.white, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ExperiencePage()),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String text, Color color, VoidCallback onPressed) {
    return Container(
      width: 200,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
