import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  List<String> title = [
    '+234-8070451885',
    'onyedirejesse@gmail.com',
    'cee_hay',
    'https://github.com/Jesse-soft',
    'www.linkedin.com/in/jesse-onyedire-92787825b',
  ];
  List<String> logo = [
    'telephone',
    'gmail',
    'twitter',
    'github',
    'linkedin',
  ];
  Column getCard() {
    List<Card> newCarditem = [];
    for (int i = 0; i < title.length; i++) {
      var newItem = Card(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              leading: ClipRRect(
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset("lib/icons/${logo[i]}.png"),
                ),
              ),
              title: Text(
                title[i],
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal[900]),
              ),
            )),
      );
      newCarditem.add(newItem);
    }
    return Column(
      children: newCarditem,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzREid4877Gelj4m0eAwnBQTop6l2wq54UQw&usqp=CAU'),
              ),
              const Text(
                'onyedire jesse',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[100]),
              ),
              SizedBox(
                width: 250,
                height: 20,
                child: Divider(
                  height: 15,
                  color: Colors.teal[400],
                ),
              ),
              getCard(),
            ],
          ),
        ),
      ),
    );
  }
}
