/// Flutter code sample for ListTile

// Here is an example of an article list item with multiline titles and
// subtitles. It utilizes [Row]s and [Column]s, as well as [Expanded] and
// [AspectRatio] widgets to organize its layout.
//
// ![Custom list item b](https://flutter.github.io/assets-for-api-docs/assets/widgets/custom_list_item_b.png)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Budgeteer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            title: const Text(_title),
            backgroundColor: Colors.black,
            centerTitle: true),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class _BudgetDescription extends StatelessWidget {
  _BudgetDescription({
    Key key,
    this.category,
    this.lastspending,
    this.budgetamount,
    this.freeamount,
    this.percentused,
  }) : super(key: key);

  final String category;
  final String lastspending;
  final String budgetamount;
  final String freeamount;
  final double percentused;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  '$category',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              ],
            ),
          ),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '$budgetamount',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                ]),
          )
        ]),
        Row(children: <Widget>[
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new LinearProgressIndicator(
                      value: percentused,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.deepOrange),
                      backgroundColor: Colors.black54)
                ]),
          )
        ]),
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Last Spending:',
                      textAlign: TextAlign.left,
                      style:
                          const TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                    Text(
                      '$lastspending',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Free Amount:',
                      textAlign: TextAlign.right,
                      style:
                          const TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                    Text(
                      '$freeamount',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            ),
          ],
        )
      ],
    );
  }
}

class CustomListItemTwo extends StatelessWidget {
  CustomListItemTwo({
    Key key,
    this.thumbnail,
    this.category,
    this.lastspending,
    this.budgetamount,
    this.freeamount,
    this.percentused,
  }) : super(key: key);

  final Widget thumbnail;
  final String category;
  final String lastspending;
  final String budgetamount;
  final String freeamount;
  final double percentused;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 100,
        child: Container(
          color: Colors.black,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.0,
                child: thumbnail,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                  child: _BudgetDescription(
                    category: category,
                    lastspending: lastspending,
                    budgetamount: budgetamount,
                    freeamount: freeamount,
                    percentused: percentused,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'Monthly Budget:',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ))),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
                child: Text(
                  'Free Amount:',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ))
            ]),
            Row(children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Text(
                        '\$ 5,000',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ))),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
                child: Text(
                  '\$ 210',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.orange,
                  ),
                ),
              ))
            ]),
            Row(children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'Your Budgets',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ))),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 0.0),
                child: RaisedButton(
                  textColor: Colors.white,
                  padding: EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.green, width: 2),
                  ),
                  child: Text('New Budget',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.normal)),
                ),
              )),
            ]),
            CustomListItemTwo(
              thumbnail: Container(
                color: Colors.black,
                alignment: Alignment.center,
                child: Icon(
                  Icons.videogame_asset_outlined,
                  color: Colors.white,
                  size: 85.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              category: 'Cinema',
              lastspending: '10.10.2020',
              budgetamount: '\$ 25',
              freeamount: '\$ 6.25',
              percentused: 0.25,
            ),
            CustomListItemTwo(
              thumbnail: Container(
                child: Icon(
                  Icons.apartment_outlined,
                  color: Colors.white,
                  size: 85.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              category: 'Rent',
              lastspending: '10.10.2020',
              budgetamount: '\$ 1250',
              freeamount: '\$ 0',
              percentused: 1.00,
            ),
            CustomListItemTwo(
              thumbnail: Container(
                child: Icon(
                  Icons.apartment_outlined,
                  color: Colors.white,
                  size: 85.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              category: 'Rent',
              lastspending: '10.10.2020',
              budgetamount: '\$ 1250',
              freeamount: '\$ 0',
              percentused: 1.00,
            ),
            CustomListItemTwo(
              thumbnail: Container(
                child: Icon(
                  Icons.apartment_outlined,
                  color: Colors.white,
                  size: 85.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              category: 'Rent',
              lastspending: '10.10.2020',
              budgetamount: '\$ 1250',
              freeamount: '\$ 0',
              percentused: 1.00,
            ),
            CustomListItemTwo(
              thumbnail: Container(
                child: Icon(
                  Icons.apartment_outlined,
                  color: Colors.white,
                  size: 85.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              category: 'Rent',
              lastspending: '10.10.2020',
              budgetamount: '\$ 1250',
              freeamount: '\$ 0',
              percentused: 1.00,
            ),
            CustomListItemTwo(
              thumbnail: Container(
                child: Icon(
                  Icons.apartment_outlined,
                  color: Colors.white,
                  size: 85.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              category: 'Rent',
              lastspending: '10.10.2020',
              budgetamount: '\$ 1250',
              freeamount: '\$ 0',
              percentused: 1.00,
            ),
            CustomListItemTwo(
              thumbnail: Container(
                child: Icon(
                  Icons.apartment_outlined,
                  color: Colors.white,
                  size: 85.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              category: 'Rent',
              lastspending: '10.10.2020',
              budgetamount: '\$ 1250',
              freeamount: '\$ 0',
              percentused: 1.00,
            ),
            FloatingActionButton.extended(
              backgroundColor: Colors.green,
              label: Text(
                'New Expense',
                style: TextStyle(
                  color:Colors.white
                )
              )
            )
          ],
        ));
  }
}
