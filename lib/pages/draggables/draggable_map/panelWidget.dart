import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidget(
      {Key? key, required this.controller, required this.panelController})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        controller: controller,
        children: <Widget>[
          SizedBox(height: 36),
          buildAboutText(),
          SizedBox(
            height: 24,
          )
        ],
      );

  Widget buildAboutText() => Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildDragHandle(),
            Text('About', style: TextStyle(fontWeight: FontWeight.w600)),
            SizedBox(
              height: 12,
            ),
            Text(
                '''aqui estamos para pasarla bien parceros, a lo bien mi llave''')
          ],
        ),
      );

  buildDragHandle() => GestureDetector(
        child: Center(
          child: Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        onTap: togglePanel,
      );

  void togglePanel() => panelController.isPanelOpen
      ? panelController.close()
      : panelController.open();
}
