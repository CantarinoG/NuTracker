import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        child: const Icon(Icons.check, color: Colors.white),
      ),
      body: Column(
        children: [
          Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Goals',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: SingleChildScrollView(child: Column(
                children: [
 Card(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 12.0, bottom: 8.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Calories',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          label: RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Calories Goal ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const TextSpan(
                                  text: '(kcal)',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0, bottom: 4.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Macronutrients',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          label: RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Carbs Goal ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const TextSpan(
                                  text: '(g)',
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          label: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Protein Goal ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                TextSpan(
                                  text: '(g)',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          label: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Daily Fat Goal ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                TextSpan(
                                  text: '(g)',
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ],
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ),
                Card(
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0, bottom: 4.0),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Extras',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            label: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Fiber Goal ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  TextSpan(
                                    text: '(g)',
                                    style: TextStyle(color: Colors.brown),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            label: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Saturated Fats Goal ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  TextSpan(
                                    text: '(g)',
                                    style: TextStyle(color: Color.fromARGB(255, 255, 193, 59)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            label: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Added Sugar Goal ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  TextSpan(
                                    text: '(g)',
                                    style: TextStyle(color: Colors.pink),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            label: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Alcohol Goal ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  TextSpan(
                                    text: '(g)',
                                    style: TextStyle(color: Colors.purple),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                  ),
                ),
                //Expanded(child: child),
                ],
              ),)),
        ],
      ),
    );
  }
}
