import 'package:flutter/material.dart';
import 'package:widget_experiment/pages/app_bar_lab_page.dart';

class SelectLabPage extends StatelessWidget {
  final labs = List.generate(100, (index) => AppBarLabPage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Labs'),
      ),
      body: ListView(
        children: labs.map((lab) {
          return Card(
            child: ListTile(
              title: Text(lab.title),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => lab)),
            ),
          );
        }).toList(),
      ),
    );
  }
}
