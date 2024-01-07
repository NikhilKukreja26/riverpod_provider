import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/auto_dispose_family/auto_dispose_family_provider.dart';

class AutoDisposeFamilyPage extends ConsumerWidget {
  const AutoDisposeFamilyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloNikhil =
        ref.watch(autoDisposeFamilyHelloProvider(there: 'Nikhil'));
    final helloSanket =
        ref.watch(autoDisposeFamilyHelloProvider(there: 'Sanket'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoDisposeFamilyProvider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              helloNikhil,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 10.0),
            Text(
              helloSanket,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
