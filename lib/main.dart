import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> buttons = [
    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
  ];
  List prices = [
    '⊙ 15 min  ⊙3  §715 kcal',
    '⊙ 1 min  ⊙4  §600 kcal',
    '⊙ 7 min  ⊙4  §280 kcal',
    '⊙ 20 min  ⊙2  §325 kcal ',
    '⊙ 15 min  ⊙3  §715 kcal',
    '⊙ 20 min  ⊙4  §600 kcal',
    '⊙ 10 min  ⊙3  §500 kcal',
    '⊙ 20 min  ⊙4  §725 kcal',
    '⊙ 15 min  ⊙4  §550 kcal',

  ];
  List foodsName = [
    'Chicken ',
    'Somsa',
    'Fast food',
    'Barak',
    'Lag\'mon sho\'rva',
    'Pizza',
    'Manti',
    'Palov',
    'Qaynatma'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: foodsName.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 17),
                child: ListTile(
                    subtitle: Text(prices[index]),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('images/image${index + 1}.jpeg'),
                    ),
                    title: Text(foodsName[index]),
                    trailing: buttons[index]),
              );
            })));
  }
}
