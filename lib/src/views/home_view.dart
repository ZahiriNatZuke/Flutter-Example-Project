import 'package:app/src/widgets/counter_add_button_widget.dart';
import 'package:app/src/widgets/counter_reset_button_widget.dart';
import 'package:app/src/widgets/counter_sub_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Clicks Counter',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '$value',
                style: const TextStyle(fontSize: 22.0),
              ),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: optionsRow(),
    );
  }

  Row optionsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox(width: 30.0),
        CounterResetButton(
          onPress: () => setState(() => value = 0),
        ),
        const Expanded(child: SizedBox()),
        CounterSubButton(
          onPress: () => setState(() => {if (value > 0) value--}),
        ),
        const SizedBox(width: 10.0),
        CounterAddButton(
          onPress: () => setState(() => value++),
        )
      ],
    );
  }
}
