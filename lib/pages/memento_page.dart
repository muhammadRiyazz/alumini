import 'package:alumni_registration/pages/payment.dart';
import 'package:flutter/material.dart';

class MementoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;

            bool isLargeScreen = screenWidth > 800;

            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Memento image filling the width
                  Container(
                    width: screenWidth,
                    height: screenHeight * 0.4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/memento.jpg'),
                        fit: BoxFit.cover, // Full-screen image
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05), // Spacing

                  // Text asking if the user wants to keep a memento
                  Text(
                    'Would you like to keep a memento\nin the program?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isLargeScreen ? 30 : 24, // Responsive font size
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // Display the memento price
                  Text(
                    'Memento Price: ₹500',
                    style: TextStyle(
                      fontSize: isLargeScreen ? 24 : 20,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),

                  // "Yes" button
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1,
                    ), // Responsive padding
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return PaymentPage(
                                from: 2, data: '', price: 500.00);
                          },
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, screenHeight * 0.08),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          fontSize: isLargeScreen ? 20 : 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // "No" button
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1,
                    ),
                    child: ElevatedButton(
                      onPressed: () {

                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, screenHeight * 0.08),
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'No',
                        style: TextStyle(
                          fontSize: isLargeScreen ? 20 : 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
