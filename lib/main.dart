import 'package:flutter/material.dart';
import './transaction.dart';




void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  
  @override
  final List<Transaction> transactions = [
    Transaction(id: 't1', title: 'Testing1', amount: 100, date: DateTime.now()),
    Transaction(id: 't2', title: 'Testing2', amount: 500, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter App'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART!'),
              elevation: 5,
              ),
            ),
          Column(children: transactions.map((tx){
            return Card(child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15),
                    decoration: BoxDecoration(border: Border.all(color: Colors.purple,width: 2,)),
                  child: 
                  Text("\$ ${tx.amount.toString()}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                    ),)
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold),),
                  Text(tx.date.toString(),
                    style: TextStyle(color: Colors.grey),
                  ),
                ],)
              ],
            ),);
          }).toList(),)
          ]
      ),
    );
  }
}