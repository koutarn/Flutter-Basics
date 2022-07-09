
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {

  // 以下を実装、受け渡し用のプロパティを定義
  final String paramText;

  // 以下を実装、コンストラクタで値を受領
  NextPage(this.paramText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NextPage'),
        centerTitle: true,
      ),
      body:Column(
          children: [
            Image.network("http://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"),
            Text(paramText),
          ],
        ),
    );
  }
}
