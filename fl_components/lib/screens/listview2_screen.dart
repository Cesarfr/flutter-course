import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({super.key});
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.indigo,
                  ),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
