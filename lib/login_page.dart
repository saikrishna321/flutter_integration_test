import 'package:flutter/material.dart';
import 'package:flutter_integration_test/login_successfull.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: const ValueKey("login_page_appBar"),
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),
        backgroundColor: Colors.white,
        title: const Text("Login", style: TextStyle(color: Colors.black)),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(key: ValueKey("title_text1"),"Hey there,"),
            const SizedBox(
              height: 10,
            ),
            const Text(
              key: ValueKey("title_text2"),
              "Welcome Back",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: username,
              key: const ValueKey("username_key"),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Username")),

            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: password,
              key: const ValueKey("password_key"),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Password")),
              obscureText: true,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  key: const ValueKey("login_button"),
                  onPressed: () {
                    if(username.text.isNotEmpty && password.text.isNotEmpty){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginSuccessful()));
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        key: const ValueKey("toast_key"),
                        content: Text(username.text.isEmpty ? "Please enter username" : "Please enter password"),
                      ));
                    }
                  },
                  child: const Text("Login")),
            ),
          ],
        ),
      ),
    );
  }
}
