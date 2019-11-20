import 'package:flutter/material.dart';
import 'package:widget_experiment/pages/lab_page.dart';

class AppBarLabPage extends LabPage {
  AppBarLabPage({Key key}) : super(key: key, title: 'AppBar');

  @override
  _AppBarLabPageState createState() => _AppBarLabPageState();
}

class _AppBarLabPageState extends State<AppBarLabPage> {
  TextEditingController titleController;
  bool centerTitle = false;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleController.value.text),
        centerTitle: centerTitle,
      ),
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.body1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('AppBar('),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('title:Text(\' '),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: titleController,
                              onEditingComplete: () {
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                        Text(' \'),')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('centerTitle: '),
                        InkWell(
                          child: Text(
                            centerTitle.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .body2
                                .copyWith(color: Colors.red),
                          ),
                          onTap: () {
                            setState(() {
                              centerTitle = !centerTitle;
                            });
                          },
                        ),
                        Text(',')
                      ],
                    ),
                  ],
                ),
              ),
              Text(')'),
            ],
          ),
        ),
      ),
    );
  }
}
