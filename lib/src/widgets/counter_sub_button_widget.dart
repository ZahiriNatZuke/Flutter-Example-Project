import 'package:flutter/material.dart';

class CounterSubButton extends StatefulWidget {
  final VoidCallback? onPress;

  const CounterSubButton({Key? key, this.onPress}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CounterSubButtonState();
}

class CounterSubButtonState extends State<CounterSubButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 4.0,
      child: const Icon(Icons.remove),
      onPressed: widget.onPress,
    );
  }
}
