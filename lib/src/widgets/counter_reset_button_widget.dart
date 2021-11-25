import 'package:flutter/material.dart';

class CounterResetButton extends StatefulWidget {
  final VoidCallback? onPress;

  const CounterResetButton({Key? key, this.onPress}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CounterResetButtonState();
}

class CounterResetButtonState extends State<CounterResetButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 4.0,
      child: const Icon(Icons.refresh_outlined),
      onPressed: widget.onPress,
    );
  }
}
