import 'dart:convert';
import 'dart:developer';

import 'package:alumni_registration/application/parking/parking_bloc.dart';
import 'package:alumni_registration/domain/parking_model.dart';
import 'package:alumni_registration/pages/footer.dart';
import 'package:alumni_registration/pages/memento_page.dart';
import 'package:alumni_registration/pages/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddFoodPage extends StatefulWidget {
  const AddFoodPage({super.key});

  @override
  _AddFoodPageState createState() => _AddFoodPageState();
}

class _AddFoodPageState extends State<AddFoodPage> {
  int selectedMeals = 0; // Number of meals selected
  List<Meal?> selectedMealList = []; // To track selected meals
  double totalAmount = 0.0; // To store total amount

  @override
  void initState() {
    BlocProvider.of<FetchingBloc>(context)
        .add(const FetchingEvent.fetchmeals());
    super.initState();
    selectedMealList = List<Meal?>.filled(selectedMeals, null);
  }

  void calculateTotalAmount() {
    setState(() {
      totalAmount = selectedMealList
          .where((meal) => meal != null) // Exclude null values
          .map((meal) => double.parse(meal!.price))
          .fold(0.0, (sum, price) => sum + price); // Sum up prices
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen width for responsive design
    final screenWidth = MediaQuery.of(context).size.width;
    final isWeb = screenWidth >
        600; // Example: consider anything wider than 600px as a web layout

    return BlocBuilder<FetchingBloc, FetchingState>(
      builder: (context, state) {
        return Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.white,
          //   elevation: 0,
          //   title: const Text(
          //     'Add Food',
          //     style: TextStyle(color: Colors.black, fontSize: 20),
          //   ),
          // ),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isWeb ? 80.0 : 16.0, // More padding for web
              vertical: isWeb ? 32.0 : 16.0, // More vertical space for web
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Customize Your Meal Plan",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text('Skip'))
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  "Choose your meals, set portions, and add dishes to your order with clear pricing for each selection!",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 15),

                // Number of Meals Input
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Number of Meals',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      selectedMeals = int.tryParse(value) ?? 1;
                      selectedMealList =
                          List<Meal?>.filled(selectedMeals, null);
                    });
                  },
                ),
                const SizedBox(height: 16),
                // Dropdowns for each meal
                Expanded(
                  child: ListView.builder(
                    itemCount: selectedMeals,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('For Person ${index + 1}'),
                          const SizedBox(height: 4),
                          Container(
                            margin: const EdgeInsets.only(bottom: 16.0),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: DropdownButton<Meal?>(
                              value:
                                  selectedMealList[index], // Current selection
                              isExpanded: true, // To make dropdown full width
                              hint: const Text("Select a meal"),
                              items: state.mealdata.map((item) {
                                return DropdownMenuItem<Meal?>(
                                  value: item,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(item.meal),
                                      Text(item.price),
                                    ],
                                  ),
                                );
                              }).toList(),
                              onChanged: (Meal? newValue) {
                                setState(() {
                                  selectedMealList[index] = newValue;
                                  calculateTotalAmount();
                                });
                              },
                            ),
                          ),
                          const SizedBox(height: 10)
                        ],
                      );
                    },
                  ),
                ),

                const Divider(),
                // Total Amount

                ListTile(
                  title: const Text(
                    "Food Amount",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  trailing: Text(
                    "$totalAmount /-",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),

                // Pay Button
                Row(
                  children: [
                    Expanded(flex: 2, child: const SizedBox()),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Validation logic
                          if (selectedMeals <= 0) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text("Please enter the number of meals")),
                            );
                            return;
                          } else {}
                          bool allMealsSelected =
                              selectedMealList.every((meal) => meal != null);
                          if (!allMealsSelected) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  content: Text(
                                      "Please select a meal for each person")),
                            );
                            return;
                          }

                          // Proceed to PaymentPage
                          final jsonList = selectedMealList
                              .map((meal) => meal!.toJson())
                              .toList();
                          final json = jsonEncode(jsonList);

                          log(json);

                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return MementoPage();
                            },
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text(
                          'Next',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                // const ResponsiveFooter(),
              ],
            ),
          ),
        );
      },
    );
  }
}
