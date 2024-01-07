import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/auto_dispose/auto_dispose_page.dart';
import 'package:provider/pages/auto_dispose_family/auto_dispose_family_page.dart';
import 'package:provider/pages/basic/basic_page.dart';
import 'package:provider/pages/family/family_page.dart';
import 'package:provider/widgets/custom_button.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: const [
            CustomButton(
              title: 'Provider',
              child: BasicPage(),
            ),
            CustomButton(
              title: 'AutoDisposeProvider',
              child: AutoDisposePage(),
            ),
            CustomButton(
              title: 'FamilyProvider',
              child: FamilyPage(),
            ),
            CustomButton(
              title: 'AutoDisposeFamilyProvider',
              child: AutoDisposeFamilyPage(),
            ),
          ],
        ),
      ),
    );
  }
}
