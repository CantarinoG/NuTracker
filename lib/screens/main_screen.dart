import 'package:flutter/material.dart';
import 'package:nutracker/models/meal.dart';
import 'package:nutracker/screens/settings_screen.dart';
import 'package:nutracker/widgets/meal_card.dart';
import 'package:nutracker/widgets/progress_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  void _showAddMealBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'New Meal',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // Add your form fields here
            const TextField(
              decoration: InputDecoration(
                labelText: 'Meal Description',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Add Meal'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddMealBottomSheet(context);
        },
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
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
                    IconButton(
                          icon: const Icon(Icons.settings),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SettingsScreen()),
                            );
                          },
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
          SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 12.0, bottom: 8.0),
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
                                    name: 'Carbs',
                                    currentValue: 120,
                                    goalValue: 300,
                                    unit: 'g', 
                                    color: Colors.green,
                                  ),
                                  SizedBox(height: 16),
                                  ProgressBar(
                                    name: 'Protein',
                                    currentValue: 45,
                                    goalValue: 150,
                                    unit: 'g',
                                    color: Colors.red,
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
                                    color: Color.fromARGB(255, 255, 193, 59),
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
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return MealCard(
                  meal: Meal(
                    name: 'Chicken Salad',
                    dateTime: DateTime.now(),
                    calories: 350,
                    carbohydrates: 15,
                    proteins: 25,
                    totalFats: 12,
                    saturatedFats: 3,
                    fiber: 4,
                    addedSugar: 0,
                    alcohol: 0,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}