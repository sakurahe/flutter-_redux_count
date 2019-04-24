import 'package:flutter/material.dart';

class IncrementComponent extends StatelessWidget {
  final int count;
  final Function onTap;

  IncrementComponent({
    Key key,
    this.count,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$count',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onTap,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
