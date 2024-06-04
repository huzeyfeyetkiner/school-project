import 'package:flutter/material.dart';
import 'package:school_project/models/recipes_model.dart';
import 'package:school_project/widgets/ingredientscard.dart';

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
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(recipe.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    recipe.title,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.orange,
                    ),
                  ),
                  subtitle: Text(
                    recipe.description,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.timer,
                            color: Colors.orange,
                            size: 30.0,
                          ),
                          Text(
                            "${recipe.prepTime} min",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.restaurant_menu,
                            color: Colors.orange,
                            size: 30.0,
                          ),
                          Text(
                            "${recipe.cal} Calories",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 30.0,
                          ),
                          Text(
                            "${recipe.rating}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: recipe.ingredients.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 0.0),
                      child: IngredientsCard(
                        ingredient: recipe.ingredients[index],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
