import 'package:conversao_moedas/stores/app.store.dart';
import 'package:conversao_moedas/themes/app.theme.dart';
import 'package:conversao_moedas/views/home.view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppStore>.value(
          value: AppStore(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Converter Moedas',
        theme: appTheme(),
        home: HomeView(),
      ),
    );
  }
}
