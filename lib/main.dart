import 'package:flutter/material.dart';
import 'package:flutter_demo/item.dart';
import 'package:flutter_demo/web_view/web_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> items = Item.fromJsonList(jsonList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crash in Webview'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: buildItemWidget,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: startWidget(),
    );
  }

  Widget startWidget() {
    return GestureDetector(
      onTap: () async {
        for (var item in items) {
          debugPrint('[push] ${item.title} +++');
          await Navigator.push(context, WebPage.route(item.url));
          if (!mounted) return;
          debugPrint('[pop] ${item.title} ----');
        }
      },
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
        alignment: Alignment.center,
        child: const Text('Auto Push'),
      ),
    );
  }

  Widget buildItemWidget(BuildContext context, int index) {
    final item = items[index];

    return GestureDetector(
      onTap: () {
        Navigator.push(context, WebPage.route(item.url));
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Text(item.title),
          ],
        ),
      ),
    );
  }
}
