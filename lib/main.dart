import 'package:flutter/material.dart';
import 'package:widgets_demo/new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgRedColor = Colors.red;
  Color bgWhitecolor = Colors.white;
  bool isRed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isRed ? bgRedColor : bgWhitecolor,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "this is the title",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        actions: const [Icon(Icons.wifi, color: Colors.white)],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              children: [
                Center(
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/5/50/Albert_Einstein_(Nobel).png?utm_source=ar.wikipedia.org&utm_campaign=index&utm_content=original",
                    height: 150,
                  ),
                ),
              ],
            ),
            /*Container(
              height: 150,
              margin: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.red,
              child:),*/
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isRed = !isRed;
                });
              },
              child: const Text("Click me if you dare"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewPage(isRed: isRed,);
                },),);
              },
              child: const Text("go to the next page"),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.ads_click)),

            Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/5/50/Albert_Einstein_(Nobel).png?utm_source=ar.wikipedia.org&utm_campaign=index&utm_content=original",
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
