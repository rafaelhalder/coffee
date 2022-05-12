import 'package:coffee/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
                  colors: [Colors.black, Color.fromARGB(69, 0, 0, 0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.center)
              .createShader(bounds),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/coffee.jpg'),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black54, BlendMode.darken)),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(children: [
            Flexible(
              child: Center(
                child: Text(
                  'Dreams Coffee',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextInputField(
                    hint: 'Email',
                    icon: FontAwesomeIcons.envelope,
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next),
                PasswordInputField(
                    hint: 'Password',
                    icon: FontAwesomeIcons.lock,
                    inputType: TextInputType.name,
                    inputAction: TextInputAction.done),
                Text(
                  'Forgot password',
                  style: kBodyText,
                ),
                SizedBox(
                  height: 25,
                ),
                RoundedButton(
                  buttonName: 'Login',
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
            Container(
              child: Text(
                'Create a new account',
                style: kBodyText,
              ),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1, color: kWhite))),
            ),
            SizedBox(
              height: 20,
            )
          ]),
        )
      ],
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), color: kBlue),
      child: TextButton(
          onPressed: () {},
          child: Text(
            buttonName,
            style: kBodyText.copyWith(fontWeight: FontWeight.bold),
          )),
    );
  }
}

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500]?.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: kBodyText,
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  icon,
                  size: 28,
                  color: kWhite,
                ),
              ),
            ),
            style: kBodyText,
            keyboardType: inputType,
            textInputAction: inputAction,
          ),
        ),
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500]?.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: kBodyText,
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  icon,
                  size: 28,
                  color: kWhite,
                ),
              ),
            ),
            style: kBodyText,
            keyboardType: inputType,
            textInputAction: inputAction,
          ),
        ),
      ),
    );
  }
}
