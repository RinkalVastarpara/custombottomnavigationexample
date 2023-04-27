import 'package:flutter/material.dart';

class CustomBottomNavigationExample extends StatefulWidget {
  const CustomBottomNavigationExample({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationExample> createState() =>
      _CustomBottomNavigationExampleState();
}

class _CustomBottomNavigationExampleState
    extends State<CustomBottomNavigationExample> {
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomBottomNavigation"),
      ),
      body: Column(
        children: [
          Expanded(
            child: (selected == 0)
                ? Text("First")
                : (selected == 1)
                    ? Text("SEcond")
                    : Text("Third"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      selected = 0;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    color: (selected == 0 ? Colors.red : Colors.black),
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selected = 1;
                    });
                  },
                  icon: Icon(Icons.supervised_user_circle_sharp,
                      color: (selected == 1 ? Colors.red : Colors.black))),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selected = 2;
                    });
                  },
                  icon: Icon(Icons.get_app,
                      color: (selected == 2 ? Colors.red : Colors.black))),
              ElevatedButton(onPressed: (){}, child: Text("ADD"))
            ],
          )
        ],
      ),
    );
  }
}
