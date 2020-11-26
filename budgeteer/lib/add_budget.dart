import 'package:flutter/material.dart';

class AddBudget extends StatelessWidget {
  static const String _title = 'Budgeteer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          // Don't show the leading button
          title: const Text(
            _title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        child: Column(children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
                child: Text(
                  'Create new Budget',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                      child: Container(
                          color: Colors.black26,
                          child: TextFormField(
                            style: TextStyle(fontSize: 18, color: Colors.white),
                            decoration: InputDecoration(
                              icon: Icon(Icons.edit, color: Colors.white),
                              labelText: 'Budget Name',
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                      child: Container(
                          color: Colors.black26,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                            decoration: InputDecoration(
                              icon:
                                  Icon(Icons.attach_money, color: Colors.white),
                              labelText: 'Amount',
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))))
            ],
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                    child: Container(
                        child: FloatingActionButton.extended(
                      backgroundColor: Colors.green,
                      label: Text('Create Budget',
                          style: TextStyle(color: Colors.white)),
                    )))
              ])
        ]));
  }
}
