import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({Key? key}) : super(key: key);

  @override
  _MyTextInput createState() => _MyTextInput();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyTextInput extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          onPressed: null,
        ),
        title: const Text('ファイル'),
      ),
      body: Center(
        child: Text(myController.text),
      )
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text("フォルダ名を入力して下さい"),
                content: TextField(
                  decoration: InputDecoration(
                    hintText: "フォルダ名",
                  ),
                  autofocus: true,
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('キャンセル'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  FlatButton(
                    textColor: Colors.blue,
                    child: Text('作成する'),
                    onPressed: () {
                      controller: myController;
                      Navigator.of(context).pop();
                    },
                  ),
                ],

              ),
          );
        },
        tooltip: 'Toggle Opacity',
        child: const Icon(Icons.create_new_folder_outlined),
      ),
    );
  }
}
