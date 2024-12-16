// import 'dart:convert';
// import 'dart:developer';
// import 'dart:html'
//     as html ; // This is the right import for web-specific features
// import 'dart:io';
// import 'dart:typed_data';
// import 'package:alumni_registration/application/reg/reg_bloc.dart';
// import 'package:alumni_registration/interface/mobile_image_picker.dart';
// import 'package:alumni_registration/interface/web_image_picker.dart';
// import 'package:alumni_registration/pages/memento_page.dart';
// import 'package:alumni_registration/pages/success_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:flutter/foundation.dart' show kIsWeb;

// class PaymentConfirmationPage extends StatefulWidget {
//   final int from;
//   final String data;
//   final double price;

//   PaymentConfirmationPage({
//     required this.from,
//     required this.data,
//     required this.price,
//   });

//   @override
//   _PaymentConfirmationPageState createState() =>
//       _PaymentConfirmationPageState();
// }

// class _PaymentConfirmationPageState extends State<PaymentConfirmationPage> {
//   File? _image;
//   String? _base64Image;

//   final ImagePicker _picker = ImagePicker();

//   Future<void> pickImage() async {
//     String? base64String;
//     if (kIsWeb) {
//       // Use Web-specific code
//       base64String = await WebImagePicker.pickImage();
//     } else {
//       // Use Mobile-specific code
//       base64String = await MobileImagePicker.pickImage();
//     }

//     if (base64String != null) {
//       setState(() {
//         _base64Image = base64String;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Payment Confirmation',
//           style: TextStyle(fontSize: 18),
//         ),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25),
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 26),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.white,
//               boxShadow: const [
//                 BoxShadow(
//                   color: Colors.black12,
//                   blurRadius: 10,
//                   offset: Offset(0, 5),
//                 ),
//               ],
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Text(
//                   'Upload Screenshot',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   'Please upload the screenshot of your payment confirmation.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 const SizedBox(height: 20),
//                 GestureDetector(
//                   onTap: pickImage,
//                   child: Container(
//                     width: double.infinity,
//                     height: 250,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(
//                         color: const Color.fromARGB(255, 150, 188, 255),
//                         width: 2,
//                       ),
//                     ),
//                     child: _base64Image == null
//                         ? const Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(
//                                 Icons.upload,
//                                 size: 50,
//                                 color: Color.fromARGB(255, 105, 156, 246),
//                               ),
//                               SizedBox(height: 10),
//                               Text(
//                                 'Tap to Upload Screenshot',
//                                 style: TextStyle(
//                                   color: Colors.blueAccent,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ],
//                           )
//                         : Image.memory(
//                             base64Decode(_base64Image!),
//                             fit: BoxFit.cover,
//                           ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 BlocConsumer<RegBloc, RegState>(
//                   listener: (context, state) {
//                     if (state.done) {
//                       if (widget.from == 1) {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => MementoPage(),
//                             ));
//                       } else {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const SuccessPageDone(),
//                             ));
//                       }
//                     }
//                   },
//                   builder: (context, state) {
//                     return state.isLoading
//                         ? const LinearProgressIndicator()
//                         : ElevatedButton(
//                             onPressed: () {
//                               if (_base64Image != null) {
//                                 log('_base64Image != null');

//                                 if (widget.from == 1) {
//                                   log('page from food');

//                                   BlocProvider.of<RegBloc>(context).add(
//                                     RegEvent.updatefood(
//                                       data: widget.data,
//                                       img: _base64Image!,
//                                     ),
//                                   );
//                                 } else {
//                                   log('page from memento');

//                                   BlocProvider.of<RegBloc>(context).add(
//                                     RegEvent.updatememento(
//                                       img: _base64Image!,
//                                     ),
//                                   );
//                                 }
//                               } else {
//                                 log('image empty');
//                               }
//                             },
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: _base64Image != null
//                                   ? Colors.blue
//                                   : Colors.grey,
//                               minimumSize: const Size(double.infinity, 55),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                             ),
//                             child: const Text(
//                               'Done',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
