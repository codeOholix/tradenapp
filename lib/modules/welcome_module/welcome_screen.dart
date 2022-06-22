import 'package:flutter/material.dart';
import 'package:tradenapp/common_widgets/button.dart';
import 'package:tradenapp/modules/welcome_module/welcome_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController pageController = PageController();
  int pageChanged = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 60.0,
            ),
            const Text(
              'TRADENAPP',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Container(
              height: 450,
              child: Expanded(
                child: PageView(
                    pageSnapping: true,
                    controller: pageController,
                    onPageChanged: (index) {
                      setState(() {
                        pageChanged = index;
                      });
                    },
                    children: [
                      WelcomePage(
                        index: pageChanged,
                      ),
                      WelcomePage(
                        index: pageChanged,
                      ),
                      WelcomePage(
                        index: pageChanged,
                      ),
                    ]),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(right: 35, left: 35),
                child: CommonButton(text: "Login", onTap: () {})),
            Container(
                margin: const EdgeInsets.only(right: 35, left: 35),
                child: CommonButton(text: "SignUp", onTap: () {})),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                child: const Text('Skip'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    ));
  }
}
