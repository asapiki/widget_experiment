import 'package:flutter/material.dart';
import 'package:widget_experiment/pages/lab_page.dart';

class AppBarLabPage extends LabPage {
  AppBarLabPage({Key key}) : super(key: key, title: 'AppBar');

  @override
  _AppBarLabPageState createState() => _AppBarLabPageState();
}

class _AppBarLabPageState extends State<AppBarLabPage> {
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: widget.title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(textController.value.text),
      ),
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.headline,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('text'),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: textController,
                        onEditingComplete: () {
                          setState(() {});
                        },
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
