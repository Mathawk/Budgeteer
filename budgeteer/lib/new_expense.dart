import 'package:flutter/material.dart';

class NewExpense extends StatelessWidget {
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
        color: Color.fromRGBO(0, 0, 0, 0.92),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 10.0),
            child: Text(
              'Create new Expense',
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.all(10.0),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: const <Widget>[
              Card(child: ListTile(
                title: Text('CINNEMAXX GmbH'),
                subtitle: Text('\$15.99'),
                trailing: Icon(Icons.arrow_forward_ios)
              )
              ),
              Card(child: ListTile(
                  title: Text('CINNEMAXX GmbH'),
                  subtitle: Text('\$15.99'),
                  trailing: Icon(Icons.arrow_forward_ios)
              )
              ),
              Card(child: ListTile(
                  title: Text('CINNEMAXX GmbH'),
                  subtitle: Text('\$15.99'),
                  trailing: Icon(Icons.arrow_forward_ios)
              )
              ),
              Card(child: ListTile(
                  title: Text('CINNEMAXX GmbH'),
                  subtitle: Text('\$15.99'),
                  trailing: Icon(Icons.arrow_forward_ios)
              )
              ),
              Card(child: ListTile(
                  title: Text('CINNEMAXX GmbH'),
                  subtitle: Text('\$15.99'),
                  trailing: Icon(Icons.arrow_forward_ios)
              )
              ),
              Card(child: ListTile(
                  title: Text('CINNEMAXX GmbH'),
                  subtitle: Text('\$15.99'),
                  trailing: Icon(Icons.arrow_forward_ios)
              )
              ),
              Card(child: ListTile(
                  title: Text('CINNEMAXX GmbH'),
                  subtitle: Text('\$15.99'),
                  trailing: Icon(Icons.arrow_forward_ios)
              )
              ),
              Card(child: ListTile(
                  title: Text('CINNEMAXX GmbH'),
                  subtitle: Text('\$15.99'),
                  trailing: Icon(Icons.arrow_forward_ios)
              )
              ),
              Card(child: ListTile(
                  title: Text('CINNEMAXX GmbH'),
                  subtitle: Text('\$15.99'),
                  trailing: Icon(Icons.arrow_forward_ios)
              )
              ),
              Card(child: ListTile(
                  title: Text('CINNEMAXX GmbH'),
                  subtitle: Text('\$15.99'),
                  trailing: Icon(Icons.arrow_forward_ios)
              )
              ),
              Card(child: ListTile(
                  title: Text('CINNEMAXX GmbH'),
                  subtitle: Text('\$15.99'),
                  trailing: Icon(Icons.arrow_forward_ios)
              )
              ),
            ],
          ))
        ]));
  }
}
