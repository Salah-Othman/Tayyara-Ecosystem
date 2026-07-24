import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tayyara_core/tayyara_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseConfig.initialize();
  runApp(const TayyaraDriverApp());
}

class TayyaraDriverApp extends StatelessWidget {
  const TayyaraDriverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tayyara Driver',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      home: const Scaffold(
        body: Center(
          child: Text('Tayyara Driver App - Coming Soon'),
        ),
      ),
    );
  }
}
