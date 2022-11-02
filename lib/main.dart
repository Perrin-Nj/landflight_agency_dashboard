import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:landflight_agency_dashboard/utils/theme.dart';
import 'package:landflight_agency_dashboard/views/dashboard.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landflight',
      home: const Dashboard(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.light,
      theme: lightTheme(),
    );
  }
}
