import 'package:flutter/material.dart';

class StudyPage extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {
      "title": "A Certificate",
      "description":
          "Learn about A Certificate syllabus, preparation tips, and more."
    },
    {
      "title": "B Certificate",
      "description":
          "Resources and study materials for B Certificate examination."
    },
    {
      "title": "C Certificate",
      "description": "Comprehensive guide for C Certificate preparation."
    },
    {
      "title": "Camps",
      "description":
          "Explore the details about various NCC camps and activities."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Materials'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(
                  categories[index]["title"]!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(categories[index]["description"]!),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigate to a detailed page for the category
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryDetailPage(
                          title: categories[index]["title"]!),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class CategoryDetailPage extends StatelessWidget {
  final String title;

  CategoryDetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          '$title Details Coming Soon!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
