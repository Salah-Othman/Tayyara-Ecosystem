import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tayyara_core/tayyara_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseConfig.initialize();
  runApp(const TayyaraAdminDashboard());
}

class TayyaraAdminDashboard extends StatelessWidget {
  const TayyaraAdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tayyara Admin Dashboard',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      home: const Scaffold(
        body: Center(
          child: Text('Tayyara Admin Dashboard - Coming Soon'),
        ),
      ),
    );
  }
}
