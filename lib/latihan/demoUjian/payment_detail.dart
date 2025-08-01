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
  final _formKey = GlobalKey<FormState>();

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

                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _paymentController,
                          decoration: InputDecoration(
                            hintText: 'Enter Payment',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            final inputAmount = int.tryParse(value!) ?? 0;
                            if (inputAmount != totalPrice) {
                              return 'Nominal must be at: ${priceController.format(totalPrice)}';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() => _isPaid = true);
                            }
                          },
                          child: Text('Pay'),
                        ),
                      ],
                    ),
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
