import 'package:flutter/material.dart';
import 'package:nutracker/widgets/progress_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'NuTracker',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.settings),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left_rounded),
                      onPressed: () {},
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Saturday, April 26'),
                    ),
                    IconButton(
                      icon: const Icon(Icons.chevron_right_rounded),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                    color: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ProgressBar(
                              name: 'Calories',
                              currentValue: 1200,
                              goalValue: 2000,
                              unit: "kcal",
                              color: Colors.blue,
                            ),
                          ),
                          const ExpansionTile(
                            title: Text('Macronutrients'),
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: const [
                                    ProgressBar(
                                      name: 'Protein',
                                      currentValue: 45,
                                      goalValue: 150,
                                      unit: 'g',
                                      color: Colors.red,
                                    ),
                                    SizedBox(height: 16),
                                    ProgressBar(
                                      name: 'Carbs',
                                      currentValue: 120,
                                      goalValue: 300,
                                      unit: 'g', 
                                      color: Colors.green,
                                    ),
                                    SizedBox(height: 16),
                                    ProgressBar(
                                      name: 'Fat',
                                      currentValue: 35,
                                      goalValue: 65,
                                      unit: 'g',
                                      color: Colors.orange,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            title: const Text('Minerals'),
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.4,
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: const [
                                        ProgressBar(
                                          name: 'Calcium',
                                          currentValue: 25,
                                          goalValue: 1000,
                                          unit: 'mg',
                                          color: Colors.grey,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Iron',
                                          currentValue: 2.2,
                                          goalValue: 18,
                                          unit: 'mg',
                                          color: Colors.red,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Magnesium',
                                          currentValue: 41,
                                          goalValue: 400,
                                          unit: 'mg',
                                          color: Colors.green,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Potassium',
                                          currentValue: 282,
                                          goalValue: 3500,
                                          unit: 'mg',
                                          color: Colors.orange,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Sodium',
                                          currentValue: 75,
                                          goalValue: 2300,
                                          unit: 'mg',
                                          color: Colors.blue,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Zinc',
                                          currentValue: 1.1,
                                          goalValue: 11,
                                          unit: 'mg',
                                          color: Colors.purple,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Phosphorus',
                                          currentValue: 343,
                                          goalValue: 700,
                                          unit: 'mg',
                                          color: Colors.brown,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Iodine',
                                          currentValue: 0,
                                          goalValue: 150,
                                          unit: 'mcg',
                                          color: Colors.teal,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Selenium',
                                          currentValue: 43,
                                          goalValue: 55,
                                          unit: 'mcg',
                                          color: Colors.amber,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Copper',
                                          currentValue: 0.1,
                                          goalValue: 0.9,
                                          unit: 'mg',
                                          color: Colors.deepOrange,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Manganese',
                                          currentValue: 0.6,
                                          goalValue: 2.3,
                                          unit: 'mg',
                                          color: Colors.indigo,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Chlorine',
                                          currentValue: 0,
                                          goalValue: 2300,
                                          unit: 'mg', 
                                          color: Colors.cyan,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            title: const Text('Vitamins'),
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.4,
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: const [
                                        ProgressBar(
                                          name: 'Vitamin A',
                                          currentValue: 6,
                                          goalValue: 900,
                                          unit: 'mcg',
                                          color: Colors.orange,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Vitamin B1 (Thiamin)',
                                          currentValue: 0.1,
                                          goalValue: 1.2,
                                          unit: 'mg',
                                          color: Colors.green,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Vitamin B2 (Riboflavin)', 
                                          currentValue: 0.1,
                                          goalValue: 1.3,
                                          unit: 'mg',
                                          color: Colors.yellow,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Vitamin B3 (Niacin)',
                                          currentValue: 17.6,
                                          goalValue: 16,
                                          unit: 'mg',
                                          color: Colors.amber,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Vitamin B5 (Pantothenic acid)',
                                          currentValue: 1.2,
                                          goalValue: 5,
                                          unit: 'mg',
                                          color: Colors.lightGreen,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Vitamin B6',
                                          currentValue: 0.6,
                                          goalValue: 1.7,
                                          unit: 'mg',
                                          color: Colors.teal,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Vitamin B7 (Biotin)',
                                          currentValue: 0,
                                          goalValue: 30,
                                          unit: 'mcg',
                                          color: Colors.cyan,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Vitamin B9 (Folate)',
                                          currentValue: 235,
                                          goalValue: 400,
                                          unit: 'mcg',
                                          color: Colors.lightBlue,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Vitamin B12',
                                          currentValue: 0.3,
                                          goalValue: 2.4,
                                          unit: 'mcg',
                                          color: Colors.blue,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Vitamin C',
                                          currentValue: 0,
                                          goalValue: 90,
                                          unit: 'mg',
                                          color: Colors.red,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Vitamin D',
                                          currentValue: 0.1,
                                          goalValue: 15,
                                          unit: 'mcg',
                                          color: Colors.purple,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Vitamin E',
                                          currentValue: 0.3,
                                          goalValue: 15,
                                          unit: 'mg',
                                          color: Colors.deepPurple,
                                        ),
                                        SizedBox(height: 16),
                                        ProgressBar(
                                          name: 'Vitamin K',
                                          currentValue: 0.4,
                                          goalValue: 120,
                                          unit: 'mcg',
                                          color: Colors.indigo,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            title: const Text('Extras'),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: const [
                                     ProgressBar(
                                      name: 'Fiber',
                                      currentValue: 0.7,
                                      goalValue: 25,
                                      unit: 'g',
                                      color: Colors.brown,
                                    ),
                                    SizedBox(height: 16),
                                    ProgressBar(
                                      name: 'Saturated fats',
                                      currentValue: 1.1,
                                      goalValue: 13,
                                      unit: 'g',
                                      color: Colors.red,
                                    ),
                                    SizedBox(height: 16),
                                    ProgressBar(
                                      name: 'Added sugar',
                                      currentValue: 0,
                                      goalValue: 25,
                                      unit: 'g',
                                      color: Colors.pink,
                                    ),
                                    SizedBox(height: 16),
                                    ProgressBar(
                                      name: 'Alcohol',
                                      currentValue: 0,
                                      goalValue: 10,
                                      unit: 'g',
                                      color: Colors.purple,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: const Text('Scrollable Content'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}