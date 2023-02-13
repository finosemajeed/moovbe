import 'package:flutter/material.dart';
import 'package:moovbe/screen/add_driver/presentation/add_driver_screen.dart';
import 'package:moovbe/screen/bus_details/presentation/bus_details_screen.dart';
import 'package:moovbe/screen/driver_list/presentation/dirvers_list_screen.dart';
import 'package:moovbe/screen/home/presentation/home_screen.dart';
import 'package:moovbe/screen/login/presentation/login_screen.dart';
import 'package:moovbe/screen/splash/presentation/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'moovbe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        '/login_screen': (context) => const LoginScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/drivers_list_screen': (context) => const DriversListScreen(),
        '/add_driver_screen': (context) => const AddDriverScreen(),
        '/bus_details_screen': (context) => const BusDetailsScreen(),
      },
    );
  }
}
