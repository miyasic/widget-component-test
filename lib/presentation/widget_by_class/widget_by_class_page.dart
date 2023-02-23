import 'package:flutter/material.dart';
import 'package:flutter_template/constants/route_path.dart';

class WidgetByClassPage extends StatelessWidget {
  const WidgetByClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kPageNameWidgetByClass),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const NewWidget(),
            ElevatedButton(
                onPressed: () {
                  build(context);
                },
                child: const Text("ビルドメソッド呼ぶ"))
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("こんにちは");
  }
}
