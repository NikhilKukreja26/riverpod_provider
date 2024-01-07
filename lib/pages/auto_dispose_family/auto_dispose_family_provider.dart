import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_dispose_family_provider.g.dart';

@riverpod
String autoDisposeFamilyHello(AutoDisposeFamilyHelloRef ref,
    {required String there}) {
  ref.onDispose(() {
    print('[autoDisposeFamilyHelloProvider($there)] disposed');
  });
  return 'Hello $there';
}

// final autoDisposeFamilyHelloProvider =kf
//     Provider.autoDispose.family<String, String>((ref, name) {
//   ref.onDispose(() {
//     print('[autoDisposeFamilyHelloProvider($name)] disposed');
//   });
//   return 'Hello $name';
// });
