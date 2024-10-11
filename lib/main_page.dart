import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 150;
  int weight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 150,
                        ),
                        Text("Male")
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 150,
                        ),
                        Text("FeMale")
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Height"),
                        Text(
                          "$height",
                          style: kInputLabelColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  height--;
                                });
                              },
                              child: const Icon(
                                Icons.remove,
                                size: 40,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  height++;
                                });
                              },
                              child: const Icon(
                                Icons.add,
                                size: 40,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Weight"),
                        Text(
                          "76",
                          style: kInputLabelColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(
                                Icons.remove,
                                size: 40,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(
                                Icons.add,
                                size: 40,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Column(
                children: [
                  const Text("BMI"),
                  Text(
                    "22.56",
                    style: kInputLabelColor.copyWith(
                        color: kTextOutColor, fontSize: 60),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
