import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_with_api/app/modules/home/provider/home_provider.dart';
import 'package:provider_with_api/app/modules/home/view/home.dart';

import 'app/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (create)=> HomeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}
