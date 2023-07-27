import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_resume/interface/configuration/app_theme.dart';
import 'package:personal_resume/interface/configuration/theme_ext.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const SnackBar _snackBar = SnackBar(
  content: Text('Oops!'),
  behavior: SnackBarBehavior.floating,
);

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                SizedBox.square(
                  dimension: 50,
                  child: Container(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const Spacer(),
                SizedBox.square(
                  dimension: 50,
                  child: Container(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const Spacer(),
                SizedBox.square(
                  dimension: 50,
                  child: Container(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                const Spacer(),
                SizedBox.square(
                  dimension: 50,
                  child: Container(
                    color: GetCustomColor.of<Purple>(context).customColor,
                  ),
                ),
                const Spacer(),
              ],
            ),
            const Spacer(),
            ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                    overlayColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.tertiary.withAlpha(30))),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                  HapticFeedback.lightImpact();
                },
                child: Container(
                  height: 200,
                  width: 300,
                  child: const Text("testme"),
                )),
            const Spacer(),
            TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                  HapticFeedback.lightImpact();
                },
                child: const Text("data")),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                HapticFeedback.lightImpact();
              },
              child: const Text("data"),
            ),
            const Spacer(),
            FilledButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                HapticFeedback.lightImpact();
              },
              child: const Text("filled"),
            ),
            const Spacer(),
            const Text(
              'You have pushed the button this many times:',
            ),
            const Spacer(),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Spacer(),
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
