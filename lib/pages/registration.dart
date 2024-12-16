import 'package:alumni_registration/application/parking/parking_bloc.dart';
import 'package:alumni_registration/application/reg/reg_bloc.dart';
import 'package:alumni_registration/domain/parking_model.dart';
import 'package:alumni_registration/pages/food_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationFormPage extends StatefulWidget {
  @override
  _RegistrationFormPageState createState() => _RegistrationFormPageState();
}

class _RegistrationFormPageState extends State<RegistrationFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _crndpositionController = TextEditingController();
  final _prvpositionController = TextEditingController();
  final _attendeesController = TextEditingController();
  final _addressController = TextEditingController();
  final _courseController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _attendeesController.dispose();
    _addressController.dispose();
    _courseController.dispose();
    _crndpositionController.dispose();
    _prvpositionController.dispose();

    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWeb = screenWidth > 600;
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    return Scaffold(
      body: Form(
        key: _formKey,
        child: LayoutBuilder(builder: (context, constraints) {
          return BlocConsumer<FetchingBloc, FetchingState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal:
                              isWeb ? 80.0 : 16.0, // More padding for web
                          vertical: isWeb ? 32.0 : 16.0,
                        ),
                        // More vertical space for web),
                        // padding: isLargeScreen
                        //     ? EdgeInsets.symmetric(
                        //         vertical: 12,
                        //         horizontal: MediaQuery.of(context).size.width * 0.2)
                        //     : EdgeInsets.symmetric(
                        //         vertical: 12,
                        //         horizontal: MediaQuery.of(context).size.width *
                        //             0.02), // Dynamic padding based on screen width
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text('Registration Form',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 15),
                                  _buildTextField(_nameController,
                                      'Name'), // Mandatory by default
                                  _buildTextField(_addressController, 'Address',
                                      isMandatory: false),
                                  _buildTextField(
                                      _phoneController, 'Phone Number',
                                      isPhone: true),
                                  _buildTextField(_emailController, 'Email',
                                      isEmail: true),
                                  Container(
                                    width: double.infinity, // Full width
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0), // Optional padding
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color.fromARGB(255, 42,
                                              42, 42)), // Optional border
                                      borderRadius: BorderRadius.circular(
                                          5.0), // Optional rounded corners
                                    ),
                                    child: DropdownButton<YearParking>(
                                      isExpanded:
                                          true, // Makes dropdown full width
                                      value: state.parking,
                                      hint: const Text('Select Year'),
                                      underline:
                                          const SizedBox(), // Removes default underline
                                      items: state.data.map((YearParking item) {
                                        return DropdownMenuItem<YearParking>(
                                          value: item,
                                          child: Text(item.year),
                                        );
                                      }).toList(),
                                      onChanged: (YearParking? newValue) {
                                        if (newValue != null) {
                                          context
                                              .read<FetchingBloc>()
                                              .add(Changeyear(year: newValue));
                                        }
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 25),

                                  _buildTextField(
                                      _courseController, 'Course of Study'),
                                  _buildTextField(_attendeesController,
                                      'No of Person Attending',
                                      isNumeric: true),
                                  _buildTextField(_crndpositionController,
                                      'Position held/Holding',
                                      isMandatory: true),

                                  // SizedBox(height: 20),

                                  // // Parking Information Display
                                  // if (state.parking != null)
                                  //   Column(
                                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //     children: [
                                  //       const Text('Parking: ',
                                  //           style: TextStyle(
                                  //               fontSize: 13,
                                  //               fontWeight: FontWeight.w600)),
                                  //       Text(state.parking!.parking,
                                  //           style: const TextStyle(
                                  //               fontSize: 12,
                                  //               fontWeight: FontWeight.w500)),
                                  //     ],
                                  //   ),

                                  const SizedBox(height: 20),
                                  BlocConsumer<RegBloc, RegState>(
                                    listener: (context, sstate) {
                                      // if (sstate.registerd) {
                                      //   Navigator.push(context, MaterialPageRoute(
                                      //     builder: (context) {
                                      //       return ReceiptPage(
                                      //         data: {
                                      //           "name": _nameController.text,
                                      //           "email": _emailController.text,
                                      //           "phone_number":
                                      //               _phoneController.text.toString(),
                                      //           "position": _crndpositionController.text,
                                      //           "previous_position":
                                      //               _prvpositionController.text,
                                      //           "attendees":
                                      //               _attendeesController.text.toString(),
                                      //           "address": _addressController.text,
                                      //           "course": _courseController.text,
                                      //           "year": state.parking!.year.toString(),
                                      //           "parking":
                                      //               state.parking!.parking.toString()
                                      //         },
                                      //       );
                                      //   },
                                      // ));
                                      // }
                                    },
                                    builder: (context, sstate) {
                                      return sstate.isLoading
                                          ? const LinearProgressIndicator()
                                          : Row(
                                              children: [
                                                const Expanded(
                                                    flex: 2, child: SizedBox()),
                                                Expanded(
                                                  flex: 1,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      // if (_formKey.currentState!
                                                      //     .validate()) {

                                                      // showDialog(
                                                      //   context: context,
                                                      //   builder: (BuildContext
                                                      //       context) {
                                                      //     return AlertDialog(
                                                      //       title: Text(
                                                      //           'Confirmation'),
                                                      //       content: const Text(
                                                      //           'Are you sure you want to proceed?'),
                                                      //       actions: [
                                                      //         TextButton(
                                                      //           onPressed: () =>
                                                      //               Navigator.of(
                                                      //                       context)
                                                      //                   .pop(), // Cancel
                                                      //           child: const Text(
                                                      //               'Cancel'),
                                                      //         ),
                                                      //         TextButton(
                                                      //           onPressed:
                                                      //               () {
                                                      //             Navigator.of(
                                                      //                     context)
                                                      //                 .pop(); // Close dialog
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return const AddFoodPage();
                                                        },
                                                      ));
                                                      //             // BlocProvider.of<RegBloc>(
                                                      //             //         context)
                                                      //             //     .add(
                                                      //             //         RegEvent.reg(data: {
                                                      //             //   "name":
                                                      //             //       _nameController.text,
                                                      //             //   "email":
                                                      //             //       _emailController.text,
                                                      //             //   "phone_number":
                                                      //             //       _phoneController.text
                                                      //             //           .toString(),
                                                      //             //   "position":
                                                      //             //       _crndpositionController
                                                      //             //           .text,
                                                      //             //   "previous_position":
                                                      //             //       _prvpositionController
                                                      //             //           .text,
                                                      //             //   "attendees":
                                                      //             //       _attendeesController
                                                      //             //           .text
                                                      //             //           .toString(),
                                                      //             //   "address":
                                                      //             //       _addressController
                                                      //             //           .text,
                                                      //             //   "course":
                                                      //             //       _courseController
                                                      //             //           .text,
                                                      //             //   "year": state
                                                      //             //       .parking!.year
                                                      //             //       .toString(),
                                                      //             //   "parking": state
                                                      //             //       .parking!.parking
                                                      //             //       .toString()
                                                      //             // }));
                                                      //           },
                                                      //           child:
                                                      //               const Text(
                                                      //                   'Yes'),
                                                      //         ),
                                                      //       ],
                                                      //     );
                                                      //   },
                                                      // );
                                                      // } else {
                                                      //   log('message');
                                                      // }
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.blue,
                                                      minimumSize: const Size(
                                                          double.infinity, 45),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                    ),
                                                    child: const Text('Next',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ),
                                              ],
                                            );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                            // const ResponsiveFooter(),
                          ],
                        ),
                      ),
                    );
            },
          );
        }),
      ),
    );
  }

  // Helper function for creating text fields
  Widget _buildTextField(TextEditingController controller, String labelText,
      {bool isEmail = false,
      bool isPhone = false,
      bool isNumeric = false,
      bool isMandatory = true}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            if (isMandatory) return 'Please enter $labelText';
            return null;
          }
          if (isEmail && !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
            return 'Please enter a valid email address';
          }
          if (isPhone && value.length != 10) {
            return 'Please enter a valid phone number';
          }
          if (isNumeric && double.tryParse(value) == null) {
            return 'Please enter a valid number';
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
