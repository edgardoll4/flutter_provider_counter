import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_provider_counter/providers/counter_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Page'),
            Text(
              // _counter.toString(),
              context.watch<CounterProvider>().counter.toString(),
              // 'test',
              style: const TextStyle(fontSize: 32, shadows: [
                Shadow(
                    color: Color.fromARGB(122, 214, 186, 28),
                    blurRadius: 10.0,
                    offset: Offset(-2, -2)),
                Shadow(
                    color: Color.fromARGB(153, 46, 48, 199),
                    blurRadius: 10.0,
                    offset: Offset(2, -2)),
                Shadow(
                    color: Color.fromARGB(150, 206, 43, 43),
                    blurRadius: 10.0,
                    offset: Offset(-2, 2)),
                Shadow(
                    color: Color.fromARGB(149, 43, 206, 57),
                    blurRadius: 10.0,
                    offset: Offset(2, 2)),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterProvider>().decrementCounter();
                      // setState(() {
                      //   _counter--;
                      // });
                    },
                    child: const Text('Restar')),
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterProvider>().resetCounter();

                    // setState(() {
                    //   _counter = 0;
                    // });
                  },
                  icon: const Icon(Icons.restart_alt),
                  label: const Text('Reset'),
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterProvider>().incrementCounter();
                      // setState(() {
                      //   _counter++;
                      // });
                    },
                    child: const Text('Sumar'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
