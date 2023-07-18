import 'package:flutter/material.dart';
import 'package:wells_fargo_clone/components/password_text_field.dart';
import 'package:wells_fargo_clone/pages/home_page.dart';

import '../components/register_cards.dart';
import '../components/sign_on_button.dart';
import '../components/text_button.dart';
import '../components/username_text_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => RegisterState();
}

class RegisterState extends State<Register> {
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'morning';
    }
    if (hour < 17) {
      return 'afternoon';
    }
    return 'evening';
  }

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool? saveUsername = false;
  bool? setupFaceId = false;

  Map<String, String> quickAccessText = {
    "1": "Customer Service",
    "2": "Enroll in Online Banking",
    "3": "Diversity & Accessibility",
    "4": "Privacy, Cookies, Security and Legal",
    "5": "Notice of Data Collection",
    "6": "General Terms of Use",
    "7": "Online Access Agreement",
    "8": "Ad Choices",
  };

  List<String> str = [
    'Not insured by the FDIC or Any Federal Government Agency',
    'Not a Deposit or Other Obligation of, or Guaranteed by, the Bank or Any Bank Affiliate',
    'Subject to Investment Risks, Including Possible Loss of the Principal Amount Invested',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/IMG-9317.png'),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'WELLS FARGO',
                        style: TextStyle(
                          fontSize: 24.5,
                          fontFamily: 'RobotoSlab',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.location_on_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Good ${greeting()}',
                    style: const TextStyle(
                      fontSize: 23,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 4.0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 280,
                      child: Column(
                        children: [
                          BuildUsernameWidget(
                            usernameController: usernameController,
                          ),
                          BuildPasswordWidget(
                            passwordController: passwordController,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 5.0,
                            ),
                            child: Row(
                              children: [
                                Transform.scale(
                                  scale: 1.5,
                                  child: Checkbox(
                                    value: saveUsername,
                                    onChanged: (value) {
                                      setState(() {
                                        saveUsername = value;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Save username'),
                                const SizedBox(width: 55.0),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                              right: 10.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BuildTextButton(
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                                  ),
                                ),
                                BuildSignOnButton(
                                  onPressed: () {},
                                  textColor: passwordController.text.length >=
                                              5 &&
                                          usernameController.text.length >= 6
                                      ? Colors.white
                                      : Colors.grey,
                                  backgroundColor:
                                      passwordController.text.length >= 5 &&
                                              usernameController.text.length >=
                                                  6
                                          ? Colors.red
                                          : Colors.grey.withOpacity(0.4),
                                  iconColor: passwordController.text.length >=
                                              5 &&
                                          usernameController.text.length >= 6
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("Forgot username or password?"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BuildRegisterCards(
                      iconData: Icons.explore_outlined,
                      text: 'Explore our products',
                      subText: 'FInd your fit',
                    ),
                    BuildRegisterCards(
                      iconData: Icons.credit_card_outlined,
                      text: 'Try do-it-yourself investing',
                      subText: 'Get started',
                    ),
                  ],
                ),
                const SizedBox(height: 130),
                Container(
                  height: 800,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: quickAccessText.entries.map(
                          (entry) {
                            return TextButton(
                              onPressed: () {},
                              child: Text(
                                entry.value,
                                style: const TextStyle(fontSize: 13),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                      Container(
                        height: 160,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: str.map((strone) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "\u2022",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        strone,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                      const Text('data'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
