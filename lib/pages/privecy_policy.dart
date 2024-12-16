import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              buildSectionTitle('1. Information We Collect'),
              buildSectionContent(
                '''We collect the following information during registration:
- Name, email address, phone number, and address.
- Food preferences (if applicable).
- Payment details (registration fees and food charges).''',
              ),
              SizedBox(height: 16),
              buildSectionTitle('2. How We Use Your Information'),
              buildSectionContent(
                '''Your information is used for:
- Processing your event registration.
- Communicating event-related updates.
- Managing payments and event preferences.''',
              ),
              const SizedBox(height: 16),
              buildSectionTitle('3. Data Sharing'),
              buildSectionContent(
                '''We do not share your data with third parties, except:
- To service providers for payment processing.
- As required by law.''',
              ),
              SizedBox(height: 16),
              buildSectionTitle('4. Data Security'),
              buildSectionContent(
                '''We implement measures to protect your data, but no system is completely secure. Please contact us for concerns.''',
              ),
              SizedBox(height: 16),
              buildSectionTitle('5. Changes to This Policy'),
              buildSectionContent(
                '''We may update this Privacy Policy. Changes will be posted on this page.''',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildSectionTitle(String title) {
  return Text(
    title,
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );
}

Widget buildSectionContent(String content) {
  return Text(
    content,
    style: TextStyle(fontSize: 16),
  );
}
