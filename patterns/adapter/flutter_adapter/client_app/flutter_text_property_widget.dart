import 'package:flutter/material.dart';

import '../../../observer/app_observer/observer/app_observer.dart';
import '../adapter/classic_app.dart';
import 'app.dart';

class FlutterTextPropertyWidget extends StatefulWidget {
  final App classicApp;

  const FlutterTextPropertyWidget({
    Key? key,
    required this.classicApp,
  }) : super(key: key);

  @override
  State<FlutterTextPropertyWidget> createState() =>
      _FlutterTextPropertyWidgetState();
}

class _FlutterTextPropertyWidgetState extends State<FlutterTextPropertyWidget> {
  @override
  Widget build(BuildContext context) {
    final app = widget.classicApp;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTextSizeSlider(app),
        _buildTextColorButtons(app),
      ],
    );
  }
  final colors = [
    Colors.black,
    Colors.pink.shade600,
    Colors.deepPurple.shade600,
    Colors.blue.shade600,
    Colors.green.shade600,
  ];

  late EventFunction<ClassicAppRepaint> _classicAppRepaintEvent;
  late EventFunction<NextTextColorEvent> _nextColorEvent;

  @override
  void initState() {
    _classicAppRepaintEvent = widget.classicApp.events.subscribe(
      (ClassicAppRepaint e) => setState(() {}),
    );

    _nextColorEvent = widget.classicApp.events.subscribe(
      (NextTextColorEvent e) => setState(() {
        final currColor =  widget.classicApp.textColor;
        var nextIndex = colors.indexOf(currColor)+1;

        if (nextIndex >= colors.length) {
          nextIndex = 0;
        }

        widget.classicApp.textColor = colors[nextIndex];
      }),
    );
    super.initState();
  }

  @override
  void dispose() {
    widget.classicApp.events
      ..unsubscribe(_classicAppRepaintEvent)
      ..unsubscribe(_nextColorEvent);
    super.dispose();
  }

  Widget _buildTextSizeSlider(App app) {
    return Row(
      children: [
        SizedBox(
          width: 31,
          child: Text(
            app.textSize.toString(),
            textAlign: TextAlign.right,
          ),
        ),
        SizedBox(
          width: 200,
          child: Slider(
            value: app.textSize.toDouble(),
            max: app.maxTextSize.toDouble(),
            min: 1,
            onChanged: (newVal) {
              app.textSize = newVal.toInt();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTextColorButtons(App app) {
    return Row(
      children: [
        ...colors.map(
          (Color color) {
            return _buildColorButton(color, app);
          },
        ).toList(),
      ],
    );
  }

  Widget _buildColorButton(Color color, App app) {
    final isColorSelect = (color == app.textColor);
    return GestureDetector(
      onTap: () {
        app.textColor = color;
      },
      child: Container(
        width: 20,
        height: 20,
        color: color,
        child: isColorSelect ? _buildSelectColorIcon() : null,
      ),
    );
  }

  Widget _buildSelectColorIcon() {
    return Center(
      child: Container(
        width: 4,
        height: 4,
        color: Colors.white.withOpacity(0.8),
      ),
    );
  }
}
