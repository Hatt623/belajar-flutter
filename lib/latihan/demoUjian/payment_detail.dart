import 'package:belajar_flutter/main_layout.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class PaymentDetail extends StatefulWidget {
  final String itemModel;
  final int quantity;
  final int price;

  const PaymentDetail({
    super.key,
    required this.itemModel,
    required this.quantity,
    required this.price,
  });

  @override
  State<PaymentDetail> createState() => _PaymentDetailState();
}

class _PaymentDetailState extends State<PaymentDetail> {
  final TextEditingController _paymentController = TextEditingController();
  final priceController = NumberFormat.currency(locale: 'id', symbol: 'Rp');
  bool _isPaid = false;

  @override
  void dispose() {
    _paymentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int totalPrice = widget.price * widget.quantity;

    return MainLayout(
      title: 'Payment',
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: _isPaid
            ? _thankYouCard(context)
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Model: ${widget.itemModel}', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text('Quantity: ${widget.quantity}'),
                  SizedBox(height: 8),
                  Text(priceController.format(totalPrice),
                      style: const TextStyle(fontSize: 13)),
                  SizedBox(height: 24),
                  TextField(
                    controller: _paymentController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter Payment Amount',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      int inputAmount = int.tryParse(_paymentController.text) ?? 0;
                      if (inputAmount == totalPrice) {
                        setState(() => _isPaid = true);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Nominal must be at: Rp$totalPrice')),
                        );
                      }
                    },
                    child: Text('Pay'),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _thankYouCard(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Thank you for choosing us 🙏🥶🥶🥶😒👌',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Text('Payment succeed for ${widget.itemModel}.'),
            SizedBox(height: 24),
            ElevatedButton.icon(
              icon: Icon(Icons.arrow_back),
              label: Text('Return to Package List'),
              onPressed: () {
                  Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
