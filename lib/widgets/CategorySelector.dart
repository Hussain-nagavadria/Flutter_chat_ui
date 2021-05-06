import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategorySelectorState();
  }
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 20.0,
                      color: index == selectedIndex
                          ? Colors.white
                          : Colors.white54),
                ),
              )),
            );
          }),
    );
  }
}
