import 'package:flutter/material.dart';
import 'package:tugas2/identity.dart';

class DetailPage extends StatefulWidget {
  //final String pesanTerima;
  final Identity identitasTerima;

  const DetailPage({Key? key, required this.identitasTerima}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Detail Page"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Detail page ${widget.identitasTerima.name}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ClipRRect(
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.network(
                    widget.identitasTerima.fotoUrls,
                    //fit: BoxFit.cover
                  ),
                ),
              ),
              Text("Username : ${widget.identitasTerima.username}"),
              Text("Email : ${widget.identitasTerima.email[0]}, ${widget.identitasTerima.email[1]}"),
              Text("Company : ${widget.identitasTerima.company[0][0]}"),
              Text(widget.identitasTerima.company[0][1]),
              Text("Company : ${widget.identitasTerima.company[1][0]}"),
              Text(widget.identitasTerima.company[1][1]),
            ],
          )
        )
      ),
    );
  }
}

