import 'package:flutter_test/flutter_test.dart';

class UIHelper{
  Future<UIHelper> enterText (WidgetTester tester, Finder finder, String text) async{
    await tester.pumpAndSettle();
    await tester.tap(finder);
    await tester.enterText(finder, text);
    return this;
  }
}