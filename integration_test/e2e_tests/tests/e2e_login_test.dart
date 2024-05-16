import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../helper/random_generator.dart';
import '../pages/login_screen/login_page.dart';
import 'package:flutter_integration_test/main.dart' as app;

Future<void> main() async{
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  testWidgets('loginUserJourney', (WidgetTester tester) async {
    app.main();

    await tester.pumpAndSettle();
    var uniqueEmailId = getUniqueEmailId();
    await LoginPage().enterEmailAndPassword(tester, uniqueEmailId);
    await LoginPage().login(tester);
    await LoginPage().homePageToLogout(tester);
    await tester.pump(const Duration(milliseconds: 2000));
    LoginPage().loginPageValidation(tester);
  });
}