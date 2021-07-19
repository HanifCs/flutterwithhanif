import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:my_fourteenth_app/models/catalog.dart';
import 'package:my_fourteenth_app/widget/drawer.dart';
import 'package:my_fourteenth_app/widget/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Hanif";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    await Future.delayed(Duration(seconds: 5));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);

    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: (CatalogModel.items.isNotEmpty)
                ? ListView.builder(
                    itemCount: CatalogModel.items.length,
                    itemBuilder: (BuildContext context, int index) =>
                        ItemWidget(
                      item: CatalogModel.items[index],
                    ),
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
