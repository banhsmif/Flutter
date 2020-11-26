import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterModel>.value(
      value: CounterModel(),
      child: Consumer<CounterModel>(
          builder: (context, model, child) => Scaffold(
                appBar: AppBar(
                  title: Text('Flutter Demo'),
                  backgroundColor: Colors.blue,
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('You have push the button this many times: '),
                      Text(
                        '${model.counter}',
                        style: Theme.of(context).textTheme.headline4,
                      )
                    ],
                  ),
                ),
                floatingActionButton: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          model.increasementCounter();
                        },
                        child: Icon(Icons.add),
                        tooltip: 'increase',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          model.decreasementCounter();
                        },
                        child: Icon(Icons.remove),
                        tooltip: 'decrease',
                      ),
                    )
                  ],
                ),
              )),
    );
  }
}
