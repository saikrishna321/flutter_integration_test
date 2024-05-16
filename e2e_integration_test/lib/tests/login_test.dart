
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_integration_test/main.dart' as app;
import 'package:integration_test/integration_test.dart';

// import '../common/random_email_generator.dart';
import 'package:e2e_integration_test/common/random_email_generator.dart';
// import '../pages/login_screen.dart';
import 'package:e2e_integration_test/pages/login_screen.dart';

Future<void> main() async{
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  testWidgets('loginFlows', (WidgetTester tester) async {
    app.main();

    await tester.pumpAndSettle();
    var uniqueEmailId = getUniqueEmailId();
    await LoginPage().enterEmailAndPassword(tester, uniqueEmailId);
    await LoginPage().login(tester);
    await LoginPage().homePageToLogout(tester);
    await tester.pump(const Duration(milliseconds: 2000));
    LoginPage().loginPageValidation(tester);
    // await tester.pump(const Duration(milliseconds: 3000));
  });
}