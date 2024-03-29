import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void dispose() {
    super.dispose();
    print('该count页面销毁');
  }

  @override
  Widget build(BuildContext context) {
    // 获取路由参数
    final routePath = ModalRoute.of(context)?.settings.arguments;
    print('路由信息:${routePath}');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '您已经多次按下按钮:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
