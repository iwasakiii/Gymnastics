import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({Key? key}) : super(key: key);
  final valueController = TextEditingController();

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

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text("フォルダ名を入力して下さい"),
                content: TextField(
                  controller: valueController,
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
