import 'package:flutter/material.dart';
import 'package:flutter_provider_counter/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({super.key});

  @override
  State<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Business Page'),
          Text(context.watch<CounterProvider>().counter.toString()),
        ],
      ),
    );
  }
}
