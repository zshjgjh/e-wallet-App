import 'package:flutter/material.dart';

class DropDownMenue extends StatefulWidget {
   DropDownMenue({
    super.key,
    required this.value1,
    required this.value2,
     required this.value
  });
   String value;
  final String value1;
  final String value2;




  @override
  State<DropDownMenue> createState() => _DropDownMenueState();
}

class _DropDownMenueState extends State<DropDownMenue> {



  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      focusColor: null,
        value:widget.value,
        icon: const Icon(Icons.arrow_drop_down),
        items:  [DropdownMenuItem<String>(
            value: widget.value1,
            child: Text( widget.value1)
        ),
          DropdownMenuItem<String>(
              value:  widget.value2,
              child: Text( widget.value2)
          ),
        ],
        onChanged: (String? newValue) {
          widget.value = newValue!;
          setState(() {

          });
        });
  }
}