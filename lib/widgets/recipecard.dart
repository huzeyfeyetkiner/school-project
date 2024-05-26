import "package:flutter/material.dart";

class RecipeCard extends StatelessWidget {
  final String title;
  final String image;

  const RecipeCard({
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              )),
          ListTile(
            title: Text(title),
            // subtitle: Text(description),
          ),
        ],
      ),
    );
  }
}
