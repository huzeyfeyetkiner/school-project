import "package:flutter/material.dart";
import "package:school_project/categoryscreen.dart";
import "package:school_project/data/recipes.dart";
import "package:school_project/recipedetailscreen.dart";
import "package:school_project/widgets/recipecard.dart";

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black.withOpacity(1),
          backgroundColor: Colors.orange,
          title: const Text(
            "Recipes",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: const Icon(
                Icons.supervised_user_circle,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CategoryScreen(category: breakfastRecipes),
                          ),
                        );
                      },
                      child: const Text("Breakfast")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CategoryScreen(category: dinnerRecipes),
                          ),
                        );
                      },
                      child: const Text("Dinner")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CategoryScreen(category: saladRecipes),
                          ),
                        );
                      },
                      child: const Text("Salads"))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              RecipeDetail(recipe: recipes[index]),
                        ),
                      );
                    },
                    child: RecipeCard(
                        title: recipes[index].title,
                        image: recipes[index].image),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
