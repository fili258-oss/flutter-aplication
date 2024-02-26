import 'package:flutter/material.dart';
import 'package:hello/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    //Estilos para textos
    const styleTextAppBar = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)
    );
    const styleTitle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 243, 243, 243)
    );
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          leading: const Icon(Icons.account_circle_rounded),
          backgroundColor: Colors.brown,
          title: const Text('Marino', style: styleTitle),
          elevation: 15,
          //shadowColor: Color.fromARGB(255, 93, 117, 129),
        ),
        body: Center(
          /*child: Container(
            //margin: const EdgeInsets.all(10.0),
            //padding: const EdgeInsets.symmetric(vertical:80),
            //padding: const EdgeInsets.symmetric(horizontal:10),
            //padding: const EdgeInsets.only(top:10),
      
            //margin: const EdgeInsets.all(10.0),
            color: Color.fromARGB(255, 4, 140, 161),
            width: 100,
            height: 48.0,
            alignment: Alignment.center,
            child: const Text('container'),
          ),*/
          child: Column(
            /*children: [
              Container(width: 90, height: 90, color: Colors.red,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                   
                ),
                
                ),
                Container(width: 90, height: 90, color: Colors.red)                
            ],*/
            
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 249, 255, 223),
                                    
                  border: Border.all(width: 2,color: Colors.brown),
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: const EdgeInsets.all(20),
                width: 350,
                height: 100,
                alignment: Alignment.center,
                
                //child: const Text('Listado 1'),
                child: const Image(
                  image: NetworkImage('https://cdn-icons-png.flaticon.com/128/590/590836.png'),
                  height: 80,
                ),
                
                
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.blue, width: 350, height: 250,
                //child: const Text('Listado 2', style: styleTitle)
                child: const CircleAvatar(
                  backgroundImage: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                  
                  radius: 50,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.red, width: 350, height: 150,
                child: const Image(
                  image: AssetImage('assets/images/BackgroundCoffe.jpg'),
                  height: 150
                ),
                //child: const Text('Listado 3', style: styleTitle)
              ),

              Container(
                padding: const EdgeInsets.all(20),
                color: const Color.fromARGB(255, 238, 246, 255), width: 350, height: 150,
                child: Image.asset('assets/images/man.png',
                  height: 150
                ),                  
              ),
                //child: const Text('Listado 3', style: styleTitle)              
            ],
          ),

          
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search'
            ),
        ],
          onTap: (index) {},
        ),
      ),
    );
  }

  
}
