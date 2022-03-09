import 'package:flutter/material.dart';
import 'package:app/src/providers/menu_provider.dart';
import 'package:app/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: const [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listItem(snapshot.requireData, context));
      },
    );
  }

  List<Widget> _listItem(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];

    for (var element in data) {
      final widget = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: const Icon(
          Icons.keyboard_arrow_right,
          color: Colors.black12,
        ),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
        },
      );

      options
        ..add(widget)
        ..add(const Divider());
    }

    return options;
  }
}
