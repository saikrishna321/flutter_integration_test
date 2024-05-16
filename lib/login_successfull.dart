import 'package:flutter/material.dart';


class LoginSuccessful extends StatelessWidget {
  const LoginSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Home", style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              "Login Successfull",
              key: ValueKey("login_successful_text"),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
                key: const ValueKey("logout_button"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Logout")),
          ),
        ],
      ),
    );
  }
}
