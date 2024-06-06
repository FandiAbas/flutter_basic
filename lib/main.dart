import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hello/mahasiswa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       home: const MyHomePage(title: 'hello flutter kelas B'),
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
  bool isLoading=true;

  List<Mahasiswa> listMahasiswa = [
    Mahasiswa(nim: 123, name: 'fandi', address: 'bongomeme'),
    Mahasiswa(nim: 456, name: 'ferdi', address: 'batudaa'),
    Mahasiswa(nim: 789, name: 'mardi', address: 'marisa'),
    Mahasiswa(nim: 543, name: 'aman', address: 'kampungjawa'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text('Data Mahasiswa'),
                      content: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text('Name : '),
                            Text(listMahasiswa[index].name)
                          ],
                        ),
                      ]),
                    );
                  });
            },
        
          child:ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromRGBO(235, 4, 4, 1),
              child: Text('${listMahasiswa[index].nim}'), 
          ),
         title:Text('${listMahasiswa[index].name}'),
          subtitle: Text('${listMahasiswa[index].address}'),
        ),
        );
        },
        itemCount: listMahasiswa.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){}, 
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }

}