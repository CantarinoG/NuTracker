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
                          onPressed: () => _showAddMealBottomSheet(context),
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
                    calcium: 50,
                    iron: 2,
                    magnesium: 30,
                    potassium: 400,
                    sodium: 500,
                    zinc: 1,
                    phosphorus: 200,
                    iodine: 30,
                    selenium: 20,
                    copper: 0.2,
                    manganese: 0.5,
                    chlorine: 100,
                    vitaminA: 200,
                    vitaminB1: 0.2,
                    vitaminB2: 0.3,
                    vitaminB3: 5,
                    vitaminB5: 1,
                    vitaminB6: 0.5,
                    vitaminB7: 10,
                    vitaminB9: 100,
                    vitaminB12: 1,
                    vitaminC: 20,
                    vitaminD: 2,
                    vitaminE: 3,
                    vitaminK: 30,
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