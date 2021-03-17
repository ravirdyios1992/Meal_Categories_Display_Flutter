import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const String routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: Column(
        children: [
          Container(
            //padding: EdgeInsets.,
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Text(
              'Ingrediants',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Container(
            //padding: EdgeInsets.,
            height: 200,
            width: 300,
            child: ListView.builder(
              itemBuilder: (meal, index) => Card(
                color: Theme.of(context).primaryColor,
                child: Text(
                  selectedMeal.ingredients[index],
                ),
              ),
              itemCount: selectedMeal.ingredients.length,
            ),
          ),
        ],
      ),
    );
  }
}
