import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealCard extends StatelessWidget {
  final Meal meal;
  
  const MealCard({
    super.key,
    required this.meal,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      color: Colors.white,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    meal.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '${meal.dateTime.hour}:${meal.dateTime.minute.toString().padLeft(2, '0')}',
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        icon: const Icon(Icons.delete_outline, color: Colors.red),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${meal.calories.round()}',
                          style: const TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(
                          text: ' kcal',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${meal.carbohydrates.round()}',
                          style: const TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(
                          text: 'g carbs',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${meal.proteins.round()}',
                          style: const TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(
                          text: 'g protein',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${meal.totalFats.round()}',
                          style: const TextStyle(color: Colors.orange, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(
                          text: 'g fat',
                          style: TextStyle(color: Colors.black),
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
    );
  }
}