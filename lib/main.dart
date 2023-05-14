import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/grid_provider.dart';
import 'view/home_screen.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GridProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {'/': (context) => HomeScreen()},
      ),
    ),
  ));
}
