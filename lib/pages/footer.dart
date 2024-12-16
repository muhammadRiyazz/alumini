import 'package:alumni_registration/pages/privecy_policy.dart';
import 'package:alumni_registration/pages/terms.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResponsiveFooter extends StatelessWidget {
  const ResponsiveFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Container(
      color: Colors.grey[200], // Background color
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      width: double.infinity, // Full width
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First row of items
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildLink(
                        'About Us', 'https://stcp.ac.in/history-profile/'),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return PrivacyPolicyPage();
                          },
                        ));
                      },
                      child: const Text(
                        'Privacy Policy',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8), // Space between rows
                // Second row of items
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return TermsConditionsPage();
                          },
                        ));
                      },
                      child: const Text(
                        'Terms & Conditions',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    _buildLink('Contact Us', 'https://stcp.ac.in/contact-us/'),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildLink('About Us', 'https://stcp.ac.in/history-profile/'),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return PrivacyPolicyPage();
                      },
                    ));
                  },
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        decoration: TextDecoration.underline),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return TermsConditionsPage();
                      },
                    ));
                  },
                  child: const Text(
                    'Terms & Conditions',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        decoration: TextDecoration.underline),
                  ),
                ),
                _buildLink('Contact Us', 'https://stcp.ac.in/contact-us/'),
              ],
            ),
    );
  }
}

Widget _buildLink(String text, String url) {
  return GestureDetector(
    onTap: () async {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch $url';
      }
    },
    child: Text(
      text,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 14,
          decoration: TextDecoration.underline),
    ),
  );
}
