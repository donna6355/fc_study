import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage>
    with AutomaticKeepAliveClientMixin<TabPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context); // Call super.build
    return FutureBuilder<List<String>>(
      future: fetchDataFromInternet(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data![index]),
              );
            },
          );
        }
      },
    );
  }

  Future<List<String>> fetchDataFromInternet() async {
    // Simulate a network call
    await Future.delayed(const Duration(seconds: 2));
    return List.generate(10, (index) => 'Item $index');
  }
}


// https://medium.com/@aakashpp/say-goodbye-to-annoying-rebuilds-in-flutters-pageview-and-tabview-8083249ea910