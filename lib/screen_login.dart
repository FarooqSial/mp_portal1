import 'package:flutter/material.dart';
import 'package:mp_portal1/screen_home.dart';
import 'package:mp_portal1/widgets/myTextField.dart';
import 'package:mp_portal1/widgets/colors.dart';
import 'package:mp_portal1/widgets/myContainer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MPColor.whiteColor,
        body: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: -80,
                    left: -20,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: MPColor.lightTealColor.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -15,
                    left: -80,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: MPColor.lightTealColor.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 80,
                    left: 120,
                    child: Image(
                      height: 161,
                      width: 184,
                      image: AssetImage('images/logo.png'),
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'Micro',
                style: TextStyle(
                  color: MPColor.lightTealColor,
                  fontFamily: 'PoppinsSemiBold',
                  fontSize: 32,
                ),
                children: [
                  TextSpan(
                    text: 'Programmers',
                    style: TextStyle(
                      color: MPColor.blueColor,
                    ),
                  ),
                ],
              ),
            ),
            const MyTextField(
              height: 27.96,
              width: 305,
              label: Text('ID'),
              hintText: '12DER42323ASA',
            ),
            const MyTextField(
              height: 46,
              width: 305,
              label: Text('Phone Number'),
              hintText: '12DER42323ASA',
            ),
            MyContainer(
              height: 39,
              width: 133,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    color: MPColor.whiteColor,
                    fontSize: 16,
                    fontFamily: 'PoppinsSemiBold',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
