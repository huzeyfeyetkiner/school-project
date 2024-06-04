import "package:flutter/material.dart";
import "package:school_project/models/recipes_model.dart";
import "package:school_project/recipedetailscreen.dart";
import "package:school_project/widgets/recipecard.dart";

class CategoryScreen extends StatelessWidget {
  final List<Recipes> category;

  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            shadowColor: Colors.black.withOpacity(1),
            backgroundColor: Colors.orange,
            title: const Text(
              "Category",
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
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              RecipeDetail(recipe: category[index]),
                        ),
                      );
                    },
                    child: RecipeCard(
                        title: category[index].title,
                        image: category[index].image),
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
