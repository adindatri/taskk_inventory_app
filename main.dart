
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'models/item_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LocalStorage.initialize();

  runApp(const TaskInventoryApp());
}


class TaskInventoryApp extends StatelessWidget {
  const TaskInventoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task & Inventory Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}