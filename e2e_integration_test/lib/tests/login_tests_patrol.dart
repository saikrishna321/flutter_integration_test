// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:integration_test/integration_test.dart';
// import 'package:patrol/patrol.dart';
// import 'package:flutter_integration_test/main.dart' as app;
//
// import '../common/random_email_generator.dart';
//
// void main() {
//   IntegrationTestWidgetsFlutterBinding.ensureInitialized();
//   WidgetsFlutterBinding.ensureInitialized();
//   patrolTest(
//     'counter state is the same after going to home and going back',
//         ($) async {
//       app.main();
//       await $.pumpAndSettle();
//       var uniqueEmailId = getUniqueEmailId();
//       $(#username_key).tap;
//       $(#username_key).enterText(uniqueEmailId);
//
//
//       // await $().tap();
//       // expect($(#counterText).text, '1');
//       //
//       // await $.native.pressHome();
//       // await $.native.pressDoubleRecentApps();
//       //
//       // expect($(#counterText).text, '1');
//       // await $(FloatingActionButton).tap();
//       // expect($(#counterText).text, '2');
//       //
//       // await $.native.openNotifications();
//       // await $.native.pressBack();
//     },
//   );
// }