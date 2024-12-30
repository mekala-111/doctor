import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class PublicationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      color:
          Color.fromARGB(255, 255, 255, 255), // Light background for the card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Profile image positioned on the left side of the row
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(
                      'assets/Ellipse.png'), // Replace with actual profile image path
                ),
                SizedBox(width: 20), // Space between the profile image and text

                // Column for doctor's name and specialty
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Text('Dr. Guruva Reddy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 4),
                    Text('Orthopaedic | DNB-Orth',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF656569)))
                  ],
                ),
                Spacer(), // This pushes the dots to the right, like in the screenshot
                Icon(Icons.more_vert, color: Colors.grey), // More options icon
              ],
            ),
            SizedBox(height: 10),
            // Image and Doctor details
            Stack(
              children: [
                // Profile image and stethoscope background image
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
                              top: 0,
                              right: 15), // Padding as per your requirement
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(100),
                            ),
                            color: Color(0xFF0055AA), // Blue chip background
                          ),
                          child: Center(
                            // This centers the content inside the container
                            child: Row(
                              mainAxisSize: MainAxisSize
                                  .min, // Ensures the Row takes only as much space as the content
                              children: [
                                Image.asset(
                                  'assets/verfied.png',
                                  color: Colors.white, // Apply color if needed
                                  width: 24, // Adjust size as needed
                                  height: 24, // Adjust size as needed
                                ),

                                SizedBox(
                                    width:
                                        8), // Space between the icon and the text
                                Text(
                                  'Ionized', // Replace with dynamic text if needed
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
              ],
            ),
            SizedBox(height: 8),
            // Doctor Name and Specialty

            SizedBox(height: 8),
            // Title and Publishing Date
            Text(
              'Your Simple title goes by truth about analytics',
              style: GoogleFonts.mukta(
                fontSize: 18,
                fontWeight: FontWeight.w400, // Equivalent to 400
                height: 1.66, // This gives a line height of 26.59px (16 * 1.66)
              ),
            ),

            SizedBox(height: 8),
            // Action buttons
            Row(
              children: [
                // Review Button wrapped inside Expanded to take 50% of the width
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Review (22)'),
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
                // Publish Button wrapped inside Expanded to take 50% of the width
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Publish'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xFF0055AA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Divider(color: Colors.grey, thickness: 1),

            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Publishing on: Dec 28 2024 | 10:30 AM',
                  style: GoogleFonts.mukta(
                    fontSize: 16,
                    fontWeight: FontWeight.w400, // Equivalent to 400
                    height:
                        1.66, // This gives a line height of 26.59px (16 * 1.66)
                    color: Colors.green,
                  ),
                ),
                SizedBox(width: 25),
                Text(
                  '2 Days Left',
                  style: GoogleFonts.mukta(
                      fontSize: 18,
                      fontWeight: FontWeight.w400, // Equivalent to 400
                      height: 1.66,
                      color: Colors
                          .red // This gives a line height of 26.59px (16 * 1.66)

                      ),
                ),
                SizedBox(height: 16),
              ],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
