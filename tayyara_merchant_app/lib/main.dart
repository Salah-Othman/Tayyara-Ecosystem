import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseConfig.initialize();
  runApp(const TayyaraMerchantApp());
}

class TayyaraMerchantApp extends StatelessWidget {
  const TayyaraMerchantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tayyara Merchant',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      home: const Scaffold(
        body: Center(
          child: Text('Tayyara Merchant App - Coming Soon'),
        ),
      ),
    );
  }
}
