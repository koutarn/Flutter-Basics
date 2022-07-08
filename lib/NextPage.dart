
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {

  // 以下を実装、受け渡し用のプロパティを定義
  final String paramText;

  // 以下を実装、コンストラクタで値を受領
  NextPage({Key? key, required this.paramText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NextPage'),
        centerTitle: true,
      ),
      body: Text(paramText), // ここで受領した値を表示
    );
  }
}
