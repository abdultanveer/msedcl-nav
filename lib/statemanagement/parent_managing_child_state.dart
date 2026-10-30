import 'package:flutter/material.dart';





void main() => runApp(MaterialApp(
  title: "state mgmt",
  home: Scaffold(
    body: ParentWidget(),
  ),
));


// ParentWidget manages the state for TapboxB.

//------------------------ ParentWidget --------------------------------

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;  //4
    });
  }
//_handleTapboxChanged = switchboard
  @override
  Widget build(BuildContext context) { //5
    return SizedBox(
      child: TapboxB(active: _active, onChanged: _handleTapboxChanged),  //1
    );
  }
}

//------------------------- TapboxB ----------------------------------

class TapboxB extends StatelessWidget {
  const TapboxB({super.key, this.active = false, required this.onChanged});

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active); //3
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,//2
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
        child: Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: const TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
