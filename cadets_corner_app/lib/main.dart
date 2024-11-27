import 'package:flutter/material.dart';
import './study.dart';

void main() {
  runApp(NCCApp());
}

class NCCApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cadets Corner',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> blogs = [
    {
      "title": "My Experience at RDC Camp",
      "description":
          "Sharing my unforgettable experiences at the Republic Day Camp...",
    },
    {
      "title": "Tent Pitching Tips for Beginners",
      "description":
          "A comprehensive guide to help beginners pitch a tent effectively...",
    },
    {
      "title": "Lessons Learned from TSC",
      "description":
          "Important lessons and skills acquired during the Thal Sainik Camp...",
    },
    {
      "title": "How Yoga Improved My Focus",
      "description":
          "Exploring the benefits of yoga and how it has enhanced my concentration...",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Cadets Corner'),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.group),
                  onPressed: () {
                    // Navigate to Cadets Corner page
                  },
                  tooltip: 'Cadets Corner',
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Add search functionality here
                  },
                  tooltip: 'Search',
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    // Add profile functionality here
                  },
                  tooltip: 'Profile',
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Cadets Corner',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Study'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudyPage()),
                );
                // Navigate to Study page
              },
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Blog'),
              onTap: () {
                // Navigate to Blog page
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_outline_outlined),
              title: Text('Camps'),
              onTap: () {
                // Navigate to Camps page
              },
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('Events'),
              onTap: () {
                // Navigate to Events page
              },
            ),
            ListTile(
              leading: Icon(Icons.checkroom),
              title: Text('Uniform'),
              onTap: () {
                // Navigate to Uniform page
              },
            ),
            ListTile(
              leading: Icon(Icons.quiz),
              title: Text('Quizzes'),
              onTap: () {
                // Navigate to Quizzes page
              },
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Cadets Corner'),
              onTap: () {
                // Navigate to Cadets Corner page
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Latest Blogs",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: blogs.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            blogs[index]["title"]!,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            blogs[index]["description"]!,
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(Icons.thumb_up),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('You liked this post!'),
                                      duration: Duration(seconds: 1),
                                    ),
                                  );
                                },
                                tooltip: 'Like',
                              ),
                              IconButton(
                                icon: Icon(Icons.comment),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          Text('Comment feature coming soon!'),
                                      duration: Duration(seconds: 1),
                                    ),
                                  );
                                },
                                tooltip: 'Comment',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
