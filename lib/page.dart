import 'package:demo2/dashboard.dart';
import 'package:flutter/material.dart';
import 'BottomBar.dart'; // Make sure to import the BottomNavBar widget if it exists
import 'card 1.dart';  // Import any other necessary files if needed

class ComingSoonPage extends StatefulWidget {
  const ComingSoonPage({super.key});

  @override
  _ComingSoonPageState createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white, size: 35),
          onPressed: () {},
        ),
        title: Center(
          child: Image.asset(
            'assets/splash.png',
            width: 35, 
            height: 35, 
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white, size: 30),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Container with options
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFC8CDCF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildOptionButton('8 Drafts'),
                  buildOptionButton('8 Publishes'),
                  buildOptionButton('30 Online'),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          // Add more content or a "Coming Soon" message if needed
          if (selectedOption == '8 Publishes') ...[
            Text(
              'Coming Soon!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'This feature is under development. Stay tuned for updates!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ],
      ),
      // Bottom navigation bar
    );
  }

  // Function to build the option buttons inside the container
  Widget buildOptionButton(String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = label;
        });
        // Handle different option selection actions
        if (label == '8 Drafts') {
          // Implement navigation or actions for 8 Drafts
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ComingSoonPage()), // Or any other page
          );
        }
        if (label == '8 Publishes') {
          // Navigate to the HomePage or any other page for 8 Publishes
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()), // Or any other page
          );
        }
        if (label == '30 Online') {
          // Implement navigation or actions for 30 Online
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ComingSoonPage()), // Or any other page
          );
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: selectedOption == label ? Color(0xFF0055AA) : Color(0xFFC8CDCF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: selectedOption == label ? Colors.white : Color(0xFF0055AA),
          ),
        ),
      ),
    );
  }
}
