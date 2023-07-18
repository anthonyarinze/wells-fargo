import 'package:flutter/material.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 25),
            onPressed: () => Navigator.pop(context),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_outlined,
                        size: 25,
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.lock,
                        size: 25,
                      ),
                    ),
                    const Text(
                      'Sign off',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Transaction details', style: TextStyle(fontSize: 23)),
              const Text('\$0.00', style: TextStyle(fontSize: 30)),
              const Text('Transaction: 01/31/2023', style: TextStyle(fontSize: 18)),
              const Text('Posted: 01/31/2023', style: TextStyle(fontSize: 18)),
              Container(
                height: 1.5,
                color: Colors.grey,
                margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                width: MediaQuery.of(context).size.width,
              ),
              const Text('Additional info', style: TextStyle(fontSize: 23)),
              const SizedBox(height: 15.0),
              const Text('Category', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              const Text('Other Miscellaneous', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 15.0),
              const Text('Transaction description',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              const Text('CLOSEOUT TRANSACTION - DDA INT BEARING', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
