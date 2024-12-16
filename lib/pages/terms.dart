import 'package:flutter/material.dart';

class TermsConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terms and Conditions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              buildSectionTitle('1. Registration and Payment'),
              buildSectionContent(
                '''Participants must provide accurate and complete information during registration.
- Registration is confirmed only after full payment of the registration fee and food charges (if applicable).
- Fees are non-refundable unless otherwise stated.''',
              ),
              SizedBox(height: 16),
              buildSectionTitle('2. Event Participation'),
              buildSectionContent(
                '''Participation is limited to alumni who have successfully registered and paid the required fees.
- The organizers reserve the right to refuse participation for incomplete or fraudulent registrations.''',
              ),
              SizedBox(height: 16),
              buildSectionTitle('3. Food Preferences'),
              buildSectionContent(
                '''Food preferences must be indicated during registration. Changes to preferences may not be accommodated after the specified deadline.''',
              ),
              SizedBox(height: 16),
              buildSectionTitle('4. Use of Personal Information'),
              buildSectionContent(
                '''By registering, you agree to the collection and use of your personal information as outlined in our Privacy Policy.''',
              ),
              SizedBox(height: 16),
              buildSectionTitle('5. Liability'),
              buildSectionContent(
                '''The organizers are not responsible for any personal injury, loss, or damage incurred during the event.
- Participants are responsible for their own safety and belongings.''',
              ),
              SizedBox(height: 16),
              buildSectionTitle('6. Website Usage'),
              buildSectionContent(
                '''You agree not to use the website for any unlawful purpose or to interfere with its operation.
- The website and its content are provided "as is" without warranties of any kind.''',
              ),
              SizedBox(height: 16),
              buildSectionTitle('7. Changes to Terms'),
              buildSectionContent(
                '''We reserve the right to modify these terms at any time. Changes will be effective immediately upon posting on this website.''',
              ),
            ],
          ),
        ),
      ),
    );
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
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
    );
  }
}
