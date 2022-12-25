import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:palipa_chat_app/modules/login/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({super.key});
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 200, left: 75, right: 75),
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.cover)),
            ),
            Form(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    CustomLoginTextformField(
                      hintText: "Email",
                      icon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomLoginTextformField(
                      hintText: "Password",
                      icon: Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Bounceable(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Giriş",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Bounceable(
                      onTap: () {
                        controller.loginWithGoogle();
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage("assets/images/logo2.jpg"))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Bounceable(
                      onTap: () {
                        controller.logoutGoogle();
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage("assets/images/logo2.jpg"))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomLoginTextformField extends StatelessWidget {
  CustomLoginTextformField({
    super.key,
    required this.hintText,
    required this.icon,
  });
  final String hintText;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color.fromARGB(255, 133, 116, 116),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20)),
        prefixIcon: icon,
        filled: true,
        fillColor: Color(0xfffe563b),
        hintText: hintText,
        hintStyle: TextStyle(color: Color.fromARGB(255, 133, 116, 116)),
      ),
    );
  }
}
