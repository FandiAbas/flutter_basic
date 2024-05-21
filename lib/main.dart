import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo kelas B'),
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
        
        
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        
        title: Text(widget.title),
      ),
      body: ListView.builder(
        padding:EdgeInsets.all(16),
        itemBuilder: (context, index){
        return Card(
          child:ListTile(
            leading: CircleAvatar(backgroundColor: Color.fromRGBO(235, 4, 4, 1),child: Text('$index'), 
          ),
         title:Text('fandi'),
          subtitle: Text('sedang belajar flutter'),
        ),
        );
        },
        itemCount: 20,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){}, 
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
