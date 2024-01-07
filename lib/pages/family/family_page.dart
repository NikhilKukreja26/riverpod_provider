import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/family/family_provider.dart';

class FamilyPage extends ConsumerWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloNikhil = ref.watch(familyHelloProvider(there: 'Nikhil'));
    final helloSanket = ref.watch(familyHelloProvider(there: 'Sanket'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('FamilyProvider'),
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
