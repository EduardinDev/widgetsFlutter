import 'package:flutter/material.dart';

// DraggableWidget: este widget es un ejemplo de como implemente un draggable sin
// ninguna libreria de por medio


class DraggableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Draggable Scrollable'),
          elevation: 0,
        ),
        body: Stack(
          children: [
            Center(
              child: Text(
                'Hola mundo',
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomModal()
          ],
        ));
  }
}

class BottomModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.7,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          child: ListaItems(scrollController),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        );
      },
    );
  }
}

class ListaItems extends StatelessWidget {
  final ScrollController scrollController;
  final List items = []..length = 20;

  ListaItems(this.scrollController);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: this.scrollController,
        itemCount: items.length,
        itemBuilder: (context, index) => ListTile(
              title: Text('Item: $index'),
            ));
  }
}
