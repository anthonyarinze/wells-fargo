import 'package:flutter/material.dart';
import 'package:wells_fargo_clone/pages/transaction_details.dart';

class OverviewTab extends StatelessWidget {
  const OverviewTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFf3f0ed),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  child: Row(
                    children: [
                      Text(
                        'Transactions',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Icon(Icons.info_outline),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(Icons.search, size: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.tune_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const BuildTransactionCard(
            avatar: 'TT',
            name: 'CLOSEOUT TRANSACTION - DDA INT BEARING',
            date: '01/31/2023',
            amount: '\$0.00',
            transaction: true,
          ),
        ],
      ),
    );
  }
}

class BuildTransactionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String date;
  final String amount;
  final bool transaction;
  const BuildTransactionCard({
    super.key,
    required this.avatar,
    required this.name,
    required this.date,
    required this.amount,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      child: Material(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 15.0),
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.green.withOpacity(0.7),
                      child: const Icon(Icons.check),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            // overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          amount,
                          style: const TextStyle(
                            fontSize: 17,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 0.5,
                color: Colors.grey,
                margin: const EdgeInsets.only(top: 15.0),
              ),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TransactionDetails(),
                  ),
                ),
                child: const Text(
                  'See all transactions',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
