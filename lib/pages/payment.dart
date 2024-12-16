import 'dart:developer';

import 'package:alumni_registration/main.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'payment_confirmation.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage(
      {super.key, required this.from, required this.data, required this.price});

  final int from;
  final String data;
  final double price;

  @override
  Widget build(BuildContext context) {
    double registrationFee = 100.0;
    double foodAmount = 200.0;
    double mementoAmount = (from == 2) ? 500.0 : 0.0;
    double totalAmount = registrationFee + foodAmount + mementoAmount;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildSummaryRow('Registration Fee', registrationFee),
            const SizedBox(height: 10),
            _buildSummaryRow('Food Amount', foodAmount),
            if (mementoAmount > 0) ...[
              const SizedBox(height: 10),
              _buildSummaryRow('Memento Amount', mementoAmount),
            ],
            const Divider(thickness: 1, height: 40),
            _buildSummaryRow('Total Amount', totalAmount, isTotal: true),
            const SizedBox(height: 40),
            Spacer(),
            Row(
              children: [
                const Expanded(flex: 2, child: SizedBox()),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // _openCheckout;
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text(
                      'Pay Now',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(String label, double amount, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isTotal ? 18 : 16,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          '₹${amount.toStringAsFixed(2)}',
          style: TextStyle(
            fontSize: isTotal ? 18 : 16,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
