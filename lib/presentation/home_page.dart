import 'package:flutter/material.dart';
import 'package:w3cove_housecleaning/data/api_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiProvider _apiProvider = ApiProvider();

  @override
  void initState() {
    super.initState();
    _apiProvider.getOperationsList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola'),
      ),
      body: const Placeholder(),
    );
  }
}
