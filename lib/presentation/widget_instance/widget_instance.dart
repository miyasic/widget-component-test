import 'package:flutter/material.dart';
import 'package:flutter_template/constants/route_path.dart';

class WidgetInstancePage extends StatefulWidget {
  const WidgetInstancePage({super.key});

  @override
  State<WidgetInstancePage> createState() => _WidgetInstancePageState();
}

class _WidgetInstancePageState extends State<WidgetInstancePage> {
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
            Text("PageState:$hashCode\nPageWidget:${widget.hashCode}"),
            const NewWidget(
              text: "constついている場合",
            ),
            NewWidget(text: "constついていない場合"),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text("ビルドメソッド呼ぶ")),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text("$text:${hashCode}");
  }
}
