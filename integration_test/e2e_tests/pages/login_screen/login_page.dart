import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart'; //package name for integration test
import '../../helper/constant.dart';

class LoginPage{
  final loginPageTitleText =  find.byKey(const ValueKey('title_text1'));
  final loginPageWelcomeText =  find.byKey(const ValueKey('title_text2'));
  final userName =  find.byKey(const ValueKey('username_key'));
  final password =  find.byKey(const ValueKey('password_key'));
  final loginButton =  find.byKey(const ValueKey('login_button'));
  final loginSuccessful=  find.byKey(const ValueKey('login_successful_text'));

  final loginSuccessfulText =  find.text('Login Successfull');

  final homeScreenText = find.text('Home');
  final backFromHome = find.byType(IconButton);
  final logoutButton = find.byKey(const ValueKey('logout_button'));//const- flutter dont need to add it in widget tree again, it re-utilises it

  Future<LoginPage> enterEmailAndPassword(WidgetTester tester, String email) async {
    await tester.pumpAndSettle();
    await tester.tap(userName);
    await tester.enterText(userName, email);
    // await UIHelper().enterText(tester, userName, email);

    await tester.pumpAndSettle();
    await tester.tap(password);
    await tester.enterText(password, key);
    await tester.pumpAndSettle();
    // await UIHelper().enterText(tester, password, key);

    return this;
  }

  Future<LoginPage> login(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(loginButton);
    await tester.pumpAndSettle();
    return this;
  }

  Future<LoginPage> homePageToLogout(WidgetTester tester) async{
    await tester.pumpAndSettle();
    expect(loginSuccessfulText, findsOneWidget);
    expect(homeScreenText, findsOneWidget);
    await tester.tap(logoutButton);
    await tester.pumpAndSettle();
    // await tester.tap(backFromHome);
    return this;
  }

  Future<LoginPage> loginPageValidation(WidgetTester tester) async{
    expect(loginPageWelcomeText, findsOneWidget);
    return this;
  } //async/await - to make method asynchronous, //which means one by one execution of the steps in a method, so that it will perform one action then switch to another one
}