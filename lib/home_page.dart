import 'package:flutter/material.dart';
import 'package:tugas2/detail_page.dart';
import 'package:tugas2/identity.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Home Page")),
        body: ListView.builder(itemBuilder: (context, index) {
          final Identity dataIdentitas = listIdentity[index];
          return Card (
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(identitasTerima: dataIdentitas);
                }));
              },
              child: Row(
                children: [
                  ClipRRect(
                    child: SizedBox(
                      height: 150,
                      width: 200,
                      child: Image.network(
                          dataIdentitas.fotoUrls,
                          //fit: BoxFit.cover
                      ),

                    ),

                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(dataIdentitas.name, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              )
            )
          );
        },
          itemCount: listIdentity.length,
        )
      ),
    );
  }

}

