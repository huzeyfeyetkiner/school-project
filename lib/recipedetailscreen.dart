import "package:flutter/material.dart";
import "package:school_project/models/recipes_model.dart";

class RecipeDetail extends StatelessWidget {
  final Recipes recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          shadowColor: Colors.black.withOpacity(1),
          backgroundColor: Colors.orange,
          title: const Text(
            "Recipe Detail",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Column(
        children: [
          // Add this line
          Container(
              height: 300,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(recipe.image),
                  fit: BoxFit.cover,
                ),
              )),
          ListTile(
            title: Text(recipe.title),
            subtitle: Text(recipe.description),
          ),
        ],
      ),
    ));
  }
}
