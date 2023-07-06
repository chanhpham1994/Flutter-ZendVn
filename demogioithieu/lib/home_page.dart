import 'package:demogioithieu/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            onPageChanged: (index) {
              setState(() => isLastPage = index == 2);
            },
            controller: controller,
            children: [
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Page 1',
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text('Page 2'),
                ),
              ),
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text('Page 3'),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: isLastPage
            ? TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('loginpage', true);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text(
                  'Login Page',
                  style: TextStyle(fontSize: 35, color: Colors.green),
                ),
              )
            : Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 80,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () => controller.jumpToPage(3),
                        child: const Text('SKIP'),
                      ),
                      Center(
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: const WormEffect(
                            spacing: 16,
                            dotColor: Colors.black,
                            activeDotColor: Colors.teal,
                          ),
                          onDotClicked: (index) => controller.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        ),
                        child: const Text('Next'),
                      )
                    ]),
              ),
      ),
    );
  }
}
