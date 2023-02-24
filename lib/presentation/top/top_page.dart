import 'package:flutter/material.dart';
import 'package:flutter_template/constants/route_path.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kPageNameTop),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.push(kPagePathWidgetByClass);
                },
                child: const Text(kPageNameWidgetByClass)),
            ElevatedButton(
                onPressed: () {
                  context.push(kPagePathWidgetByFunction);
                },
                child: const Text(kPageNameWidgetByFunction)),
            ElevatedButton(
                onPressed: () {
                  context.push(kPagePathWidgetInstance);
                },
                child: Text(kPageNameWidgetInstance))
          ],
        ),
      ),
    );
  }
}
