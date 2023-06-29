import 'package:flutter/material.dart';

class CustomSliderWidget extends StatefulWidget {
  const CustomSliderWidget({super.key});

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  var _maxWidth = 0.0;
  var _width = 0.0;
  var _value = 0.0;
  var _booked = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        _maxWidth = constraint.maxWidth;
        return Container(
            decoration: BoxDecoration(
              color: _booked ? Colors.greenAccent : Colors.blueAccent,
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
              border: Border.all(
                  color: _booked ? Colors.greenAccent : Colors.blueAccent),
            ),
            height: 60,
            child: Stack(
              children: [
                Center(
                  child: Text(
                    _booked ? "Booked" : "Slide to book",
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                AnimatedContainer(
                  width: _width <= 55 ? 55 : _width,
                  duration: const Duration(
                    milliseconds: 100,
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: SizedBox(),
                      ),
                      GestureDetector(
                        onVerticalDragUpdate: onDrag,
                        onVerticalDragEnd: onDragEnd,
                        child: Center(
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration:const BoxDecoration(
                              color: Colors.white,
                              borderRadius:BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                            child:const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }

  void onDrag(DragUpdateDetails details) {
    setState(() {
      _value = (details.globalPosition.dx) / _maxWidth;
      _width = _maxWidth * _value;
    });
  }

  void onDragEnd(DragEndDetails details) {
    if (_value > 0.9) {
      _value = 1;
    } else {
      _value = 0;
    }
    setState(() {
      _width = _maxWidth * _value;
      _booked = _value > .9;
    });
  }
}
