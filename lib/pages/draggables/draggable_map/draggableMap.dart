
import 'package:draggablesheet/pages/draggables/draggable_map/panelWidget.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

// En este DraggableMapa se esta utilizando la libreria sliding_up_panel: ^2.0.0+1
// VENTAJAS: componentes fuera del draggable también se mueven dinamicamente
// con el draggable


class DraggableMapa extends StatefulWidget {
  @override
  _DraggableMapaState createState() => _DraggableMapaState();
}

class _DraggableMapaState extends State<DraggableMapa> {
  static const double fabHeightClosed = 116.0;
  double fabHeight = fabHeightClosed;
  final panelController = new PanelController();

  @override
  Widget build(BuildContext context) {
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.5;
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.1;

    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SlidingUpPanel(
            controller: panelController,
            maxHeight: panelHeightOpen,
            minHeight: panelHeightClosed,
            parallaxEnabled: true,
            parallaxOffset: .5,
            body: Container(
              color: Colors.amber,
            ),
            panelBuilder: (controller) => PanelWidget(
              controller: controller,
              panelController: panelController,
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            onPanelSlide: (position) => setState(() {
              final panelMaxScrollExtent = panelHeightOpen - panelHeightClosed;
              fabHeight = position * panelMaxScrollExtent + fabHeightClosed;
            }),
          ),
          Positioned(right: 20, bottom: fabHeight, child: buildFAB(context))
        ],
      ),
    );
  }

  Widget buildFAB(BuildContext context) => FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.gps_fixed,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () {},
      );
}
