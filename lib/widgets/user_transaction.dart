import 'package:flutter/material.dart';
import '../widgets/transaction_list.dart';
import '../widgets/new_transaction.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {

  
  final List<Transaction> _userTransaction = [
    Transaction(id: 't1', title: 'Testing1', amount: 100, date: DateTime.now()),
    Transaction(id: 't2', title: 'Testing2', amount: 500, date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {

    final newTx =
        Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());


        setState(() {
          _userTransaction.add(newTx);
        });

  }
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction), //This is widget that contains input fields
        TransactionList(_userTransaction), // This is widget that contains transaction logs
      ],
    );
  }
}
