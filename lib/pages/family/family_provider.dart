import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'family_provider.g.dart';

@Riverpod(keepAlive: true)
String familyHello(FamilyHelloRef ref, {required String there}) {
  ref.onDispose(() {
    print('[familyHelloProvider($there)] disposed');
  });
  return 'Hello $there';
}

// final familyHelloProvider = Provider.family<String, String>((ref, name) {
//   ref.onDispose(() {
//     print('[familyHelloProvider($name)] disposed');
//   });
//   return 'Hello $name';
// });
