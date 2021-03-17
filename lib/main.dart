
import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/meal_detail_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              subtitle1: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed'))),
      home: CategoriesScreen(),
      //initialRoute: '/',
      routes: {
       // '/' : (ctx) => CategoryMealsScreen(),
        CategoryMealsScreen.routeName: (cntx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (cntx) => MealDetailScreen(),
      },
      onGenerateRoute: (settings) {
          print(settings.arguments);
          if (settings.arguments == '/meal-detail'){
//return MaterialPageRoute(builder: (cntx) => CategoriesScreen());
          }
          return MaterialPageRoute(builder: (cntx) => CategoriesScreen());
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (cntx) => CategoriesScreen());
      },
    );
  }
}
