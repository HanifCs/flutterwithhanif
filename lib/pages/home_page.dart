import 'package:flutter/material.dart';
import 'package:my_fourteenth_app/models/catalog.dart';
import 'package:my_fourteenth_app/widget/drawer.dart';
import 'package:my_fourteenth_app/widget/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Hanif";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: dummyList.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemWidget(
                  item: dummyList[index],
                );
              },
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
