import 'package:flutter/material.dart';

import 'Film.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Siswa>? siswa11PPLG2 = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Siswa joseph = new Siswa("Joseph", "joseph@gmail.com");
    Siswa arvi = new Siswa("Arvi", "arvi@gmail.com");
    Siswa adam = new Siswa("Adam", "adam@gmail.com");
    Siswa damar = new Siswa("Damar", "damar@gmail.com");
    siswa11PPLG2?.add(joseph);
    siswa11PPLG2?.add(arvi);
    siswa11PPLG2?.add(adam);
    siswa11PPLG2?.add(damar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
      body: Center(
        child: Container(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: siswa11PPLG2?.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(siswa11PPLG2![index].name),
                      Text(siswa11PPLG2![index].email),
                    ],
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
