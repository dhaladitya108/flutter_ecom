import 'package:flutter/material.dart';
import 'package:flutter_ecom/screens/home_page.dart';
import 'package:provider/provider.dart';

import 'models/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        )
      ],
      child: MaterialApp(
        title: "Flutter E-commerce App",
        theme: ThemeData(
          primaryColor: Colors.teal,
          accentColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
