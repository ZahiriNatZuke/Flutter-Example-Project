import 'package:flutter/material.dart';

class CounterAddButton extends StatefulWidget {
  final VoidCallback? onPress;

  const CounterAddButton({Key? key, this.onPress}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CounterAddButtonState();
}

class CounterAddButtonState extends State<CounterAddButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 4.0,
      child: const Icon(Icons.add),
      onPressed: widget.onPress,
    );
  }
}
