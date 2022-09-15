import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Project repo Url
final Uri _url = Uri.parse('https://github.com/Jake1924/TeamColab');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Team Colab',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Welcome to TeamColaboration'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black87,
                ),
                child: Text(
                  " Team Work Navigation Panel",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 36),
                )),
            ListTile(
                title: const Text("1st_name_work",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                onTap: () {
                  Navigator.pop(context);
                  const snackBar = SnackBar(
                    content: Text("Make your work page by creating a branch !"),
                    action: SnackBarAction(
                        label: 'Create now', onPressed: _launchUrl),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
            ListTile(
                title: const Text("2nd_name_work",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                onTap: () {
                  Navigator.pop(context);
                  const snackBar = SnackBar(
                    content: Text("Make your work page by creating a branch !"),
                    action: SnackBarAction(
                        label: 'Create now', onPressed: _launchUrl),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
            ListTile(
                title: const Text("3rd_name_work",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                onTap: () {
                  Navigator.pop(context);
                  const snackBar = SnackBar(
                    content: Text("Make your work page by creating a branch !"),
                    action: SnackBarAction(
                        label: 'Create now', onPressed: _launchUrl),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome to Team Collboration Project',
        ),
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
