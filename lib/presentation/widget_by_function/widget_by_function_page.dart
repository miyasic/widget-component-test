import 'package:flutter/material.dart';
import 'package:flutter_template/constants/route_path.dart';

class WidgetByFunctionPage extends StatelessWidget {
  const WidgetByFunctionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kPageNameWidgetByFunction),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildText(),
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

  Text buildText() => const Text("こんにちは");
}
