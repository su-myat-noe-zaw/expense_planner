import 'package:flutter/material.dart';


class NewTransaction extends StatelessWidget {

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTx;

  NewTransaction(this.addTx);

  void submitData(){
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if(enteredTitle.isEmpty || enteredAmount <= 0){
      return;
    }

    addTx(
      enteredTitle,
      enteredAmount
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all((10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: titleController,
                      onSubmitted: (_) => submitData,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      controller: amountController,
                      keyboardType: TextInputType.number,
                      onSubmitted: (_) => submitData,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextButton(
                        onPressed: submitData,
                        child: Text("Add Transaction"),
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.purple),
                      ),
                    )
                  ],
                ),
              ),
            );
  }
}