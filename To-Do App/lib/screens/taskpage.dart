import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/Provider/titleNotifier.dart';
import 'package:flutter_complete_guide/models/task.dart';
import 'package:provider/provider.dart';

class TaskPage extends StatefulWidget {
  final Task task;
  TaskPage({@required this.task});
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  TextEditingController _titleController = new TextEditingController();
  TextEditingController _descController = new TextEditingController();

  FocusNode _titlefocus;
  FocusNode _descriptionfocus;
  bool _contentVisible = true;
  @override
  void initState() {
    if (widget.task != null) {
      _contentVisible = true;
    }
    _titlefocus = FocusNode();
    _descriptionfocus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _titlefocus.dispose();
    _descriptionfocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Image(
                            image:
                                AssetImage("assets/images/ack_arrow_icon.png"),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          focusNode: _titlefocus,
                          onSubmitted: (value) async {
                            //check if the field isnot null
                            if (value != "") {
                              // check if task is null
                              // Provider.of<TitleNotifier>(context, listen: false)
                              //     .addTitle(_titleController.text,
                              //         _descController.text);
                              _descriptionfocus.requestFocus();
                            }
                          },
                          controller: _titleController,
                          decoration: InputDecoration(
                              hintText: "Enter Task Title!",
                              border: InputBorder.none,
                              fillColor: Colors.black38),
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Visibility(
                    visible: _contentVisible,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: TextField(
                          controller: _descController,
                          onSubmitted: (value) {
                            if (value != "") {
                              Provider.of<TitleNotifier>(context, listen: false)
                                  .addTitle(_titleController.text,
                                      _descController.text);
                            }
                          },
                          focusNode: _descriptionfocus,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Write your description here!!"),
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
              Visibility(
                visible: _contentVisible,
                child: Positioned(
                  right: 24.0,
                  bottom: 0.0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: LinearGradient(
                              colors: [Colors.red[800], Colors.red[500]],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight)),
                      child: Image(
                        image: AssetImage("assets/images/delete_icon.png"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
