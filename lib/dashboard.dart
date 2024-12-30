import 'package:demo2/card2.dart'; 
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'BottomBar.dart';
import 'card 1.dart'; 
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedOption = 'Publishes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
          
          Container(
           padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: Color(0xFFC8CDCF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
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
        
          
          Expanded(
            child: 
        
         selectedOption == "8 Drafts"? Text("coming soon", textAlign: TextAlign.center,style: GoogleFonts.mukta(
                fontSize: 36,
                fontWeight: FontWeight.w400, // Equivalent to 400
                height: 20.66, // This gives a line height of 26.59px (16 * 1.66)
              ),): selectedOption == "30 Online"? Text("coming soon", textAlign: TextAlign.center,style: GoogleFonts.mukta(
                fontSize: 36,
                fontWeight: FontWeight.w400, // Equivalent to 400
                height: 20.66, // This gives a line height of 26.59px (16 * 1.66)
              ),):
          
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                
                if (index % 2 == 0) {
                  return PublicationCard(); 
                } else {
                  return PublicationCard2();  
                }
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 0), 

      
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 0.0), 
        child: FloatingActionButton(
          onPressed: () {
            
          },
          child: Image.asset('assets/add.png', width: 100, height: 100),
          backgroundColor: const Color(0x660055AA), 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), 
            side: BorderSide(),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, 
    );
  }

  Widget buildOptionButton(String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = label;
        });
        
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          color: selectedOption == label ? Color(0xFF0055AA) : Color(0xFFC8CDCF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          label,
          style: GoogleFonts.mukta(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: selectedOption == label ? Colors.white : Color(0xFF0055AA),
          ),
        ),
      ),
    );
  }
}
