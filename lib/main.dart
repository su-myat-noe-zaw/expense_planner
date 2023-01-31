import 'package:flutter/material.dart';
import 'package:my_sec_flutter_project/widgets/new_transaction.dart';
import './widgets/user_transaction.dart';



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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  // String titleInput ='';
  // String amountInput = '';

  void clickedAddTransaction() {
    print(titleController.text);
  }

  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void startAddNewTransaction (BuildContext ctx){
    // showModalBottomSheet(context: ctx, builder: (_){ 
    //   return NewTransaction();
    //  })
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        actions: <Widget>[
          
        ],
      ),
      body: Column(
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
            UserTransaction(),
          ]),
          floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: () => print('You clicked me!'),),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
