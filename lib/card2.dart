import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PublicationCard2 extends StatelessWidget {
  const PublicationCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      color:
          Color.fromARGB(255, 255, 255, 255), // Light background for the card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 8, // Add shadow to card
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image and Doctor details
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/icon.png', // Replace with your stethoscope image asset
                    width: double.infinity,
                    height: 166,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    child: Container(
                      width: 120, // Fixed width
                      height: 35, // Fixed height
                      padding: EdgeInsets.only(
                          top: 0, right: 15), // Padding as per your requirement
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(100),
                        ),
                        color: Color(0xB2FF4F4B), // Blue chip background
                      ),
                      child: Center(
                        // This centers the content inside the container
                        child: Row(
                          mainAxisSize: MainAxisSize
                              .min, // Ensures the Row takes only as much space as the content
                          children: [
                            Image.asset(
                                  'assets/load.png',
                                  color: Colors.white, // Apply color if needed
                                  width: 16, // Adjust size as needed
                                  height: 16, // Adjust size as needed
                                ),
                            SizedBox(
                                width:
                                    8), // Space between the icon and the text
                            Text(
                              'Ionizing', // Replace with dynamic text if needed
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 8),
            // Title and Publishing Date
            Text(
              'Your Simple title goes by truth about analytics by the simple.',
              style: GoogleFonts.mukta(
                fontSize: 18,
                fontWeight: FontWeight.w400, // Equivalent to 400
                height: 1.66, // This gives a line height of 26.59px (16 * 1.66)
              ),
            ),
            SizedBox(height: 8),
            // Action buttons (Add Inputs & Publish)
            Row(
              children: [
                // Add Inputs Button
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Add Inputs'),
                        SizedBox(width: 8),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent,
                          ),
                          child: Text(
                            '22',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color(0xFF1F1F38),
                      backgroundColor: Color(0xFFEAEAFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
               
              ],
            ),
            SizedBox(height: 8),
            Divider(color: Colors.grey, thickness: 1),

            SizedBox(height: 8),
            // Date and Countdown
            Row(
              children: [
                Text(
                  'Dec 28 2024 | 10:30 AM',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.mukta(
                fontSize: 18,
                fontWeight: FontWeight.w400, // Equivalent to 400
                height: 1.66,
                 // This gives a line height of 26.59px (16 * 1.66)
              color: Colors.green, 
              ),
                ),
                SizedBox(width: 100),
                Text(
                  '2 Days Left',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.mukta(
                fontSize: 18,
                fontWeight: FontWeight.w400, // Equivalent to 400
                height: 1.66,
                color: Colors.red, // This gives a line height of 26.59px (16 * 1.66)
              ),
                ),
              ],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
