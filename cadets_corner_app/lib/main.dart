import 'package:flutter/material.dart';

void main() {
  runApp(NCCApp());
}

class NCCApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NCC App',
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
  final List<String> blogs = [
    "My Experience at RDC Camp",
    "Tent Pitching Tips for Beginners",
    "Lessons Learned from TSC",
    "How Yoga Improved My Focus",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Add search functionality here
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    // Add profile functionality here
                  },
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
                'NCC App',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Study'),
              onTap: () {
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
                    child: ListTile(
                      title: Text(blogs[index]),
                      onTap: () {
                        // Navigate to blog details
                      },
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
