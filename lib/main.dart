import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mero_discount/routes.dart';

void main() {
  runApp(
    const MyApp(), // Wrap your app
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xffFC4704),
            background: const Color(0xffFC4704)),
        useMaterial3: false,
      ),
      getPages: appRoutes(),
    );
  }
}
