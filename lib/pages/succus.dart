import 'dart:developer';
import 'dart:io';
import 'package:alumni_registration/application/parking/parking_bloc.dart';
import 'package:alumni_registration/application/reg/reg_bloc.dart';
import 'package:alumni_registration/pages/food_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
// import 'package:url_launcher/url_launcher.dart';

class ReceiptPage extends StatelessWidget {
  final Map<String, dynamic> data;

  const ReceiptPage({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegBloc, RegState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Receipt'),
            actions: [
              IconButton(
                icon: const Icon(Icons.download),
                onPressed: () {
                  _generatePdf(context);
                },
              ),
            ],
          ),
          body: SafeArea(
            child: ListView(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 213, 213, 213)
                                .withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          const Center(
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.blue,
                              child: Icon(
                                Icons.done_rounded,
                                size: 45,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'ABC Alumni Meet 2024',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            '12 March 2024',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 40),
                          Divider(),
                          _buildDetailRow('Name:', data['name']),
                          _buildDetailRow(
                              'Number of Attendees:', data['attendees']),
                          _buildDetailRow('Year of Study:', data['year']),
                          _buildDetailRow('Parking:', data['parking']),
                          _buildDetailRow('Phone no:', data['phone_number']),
                          const Divider(),
                          const SizedBox(height: 20),
                          Center(
                            child: QrImageView(
                              data: '${state.id}',
                              version: QrVersions.auto,
                              size: 200.0,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          const SizedBox(height: 20),
                          const Text(
                            'Thank You!',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          const Center(
                            child: Text.rich(
                              TextSpan(
                                text:
                                    'Join Us for the ABC School Alumni Program!\n October 23, 2024,\n',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                                children: [
                                  TextSpan(
                                    text: 'at the School Auditorium!',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<FetchingBloc>(context)
                                  .add(const FetchingEvent.fetchmeals());
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const AddFoodPage();
                                },
                              ));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors
                                  .blue, // Set the button background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20), // Border radius of 10
                              ),
                            ), // Your onPressed function
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 12),
                              child: Text('      Next      ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }

  Future<void> _generatePdf(BuildContext context) async {
    try {
      // final pdf = pw.Document();
      // pdf.addPage(
      //   pw.Page(
      //     build: (pw.Context context) {
      //       return pw.Column(
      //         crossAxisAlignment: pw.CrossAxisAlignment.start,
      //         children: [
      //           pw.Text('Receipt', style: pw.TextStyle(fontSize: 24)),
      //           pw.SizedBox(height: 20),
      //           pw.Text('Name: $name'),
      //           pw.Text('Number of Attendees: $numberOfAttendees'),
      //           pw.Text('Program Title: $programTitle'),
      //           pw.Text('Date: $date'),
      //           pw.Text('Time: $time'),
      //           pw.Text('Batch: $batch'),
      //           pw.Text('Parking: $parking'),
      //           pw.SizedBox(height: 20),
      //           pw.Text('Thank You!', style: pw.TextStyle(fontSize: 18)),
      //         ],
      //       );
      //     },
      //   ),
      // );

      // // Get the Downloads directory to save the PDF
      // final output = await getExternalStorageDirectory();
      // if (output != null) {
      //   final filePath = '${output.path}/Download/receipt.pdf';
      //   final file = File(filePath);

      //   // Ensure the Download directory exists
      //   await file.parent.create(recursive: true);

      //   await file.writeAsBytes(await pdf.save());

      //   // Show a snackbar with instructions to open the downloads folder
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(
      //       content: const Text('Receipt saved to Downloads folder.'),
      //       action: SnackBarAction(
      //         label: 'Open',
      //         onPressed: () {
      //           _openDownloadsFolder(contex: context);
      //         },
      //       ),
      //     ),
      //   );
      // } else {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     const SnackBar(
      //         content: Text('Unable to get the Downloads directory')),
      //   );
      // }
    } catch (e) {
      log('Error generating PDF: $e');
    }
  }

  Future<void> _openDownloadsFolder({required contex}) async {
    final directory = await getExternalStorageDirectory();
    if (directory != null) {
      final downloadsPath = '${directory.path}/Download/';
      final Uri uri = Uri.parse('file://$downloadsPath');

      // // Check if can launch before trying to launch the URI
      // if (await canLaunch(uri.toString())) {
      //   await launch(uri.toString());
      // } else {
      //   ScaffoldMessenger.of(contex).showSnackBar(
      //     SnackBar(content: Text('Could not launch $downloadsPath')),
      //   );
      // }
    }
  }
}
