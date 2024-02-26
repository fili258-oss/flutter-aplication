import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          leading: const Icon(Icons.account_circle_rounded),
          backgroundColor: Colors.brown,
          title: const Text('Screen 2'),
          elevation: 15,
          //shadowColor: Color.fromARGB(255, 93, 117, 129),
        ),
        body: Column(         
          children: [
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Nombre: ',
                hintText: 'Help text'
              ),
            ),
          
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button')
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button')
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Text Button')
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star),
            ),
              //child: const Text('Listado 3', style: styleTitle)              
            ],

          
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          ],
          onTap: (index) {},
        ),
        
      ),
    );
  }
}


