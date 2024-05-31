import 'package:flutter/material.dart';
import 'package:flutter_context_menu/flutter_context_menu.dart';

// define your context menu entries
final entries = <ContextMenuEntry>[
  MenuItem(
    label: 'Cosy Areas',
    icon: Icons.home,
    onSelected: () {
      // implement copy
    },
  ),
  MenuItem(
    label: 'Price',
    icon: Icons.money,
    onSelected: () {
      // implement paste
    },
  ),
  MenuItem(
    label: 'Infrastructire',
    icon: Icons.create,
    onSelected: () {
      // implement paste
    },
  ),
  MenuItem(
    label: 'Without any layers',
    icon: Icons.layers,
    onSelected: () {
      // implement paste
    },
  ),
];

// initialize a context menu

void showMenuWithPosition(GlobalKey key) {
  RenderBox? box = key.currentContext?.findRenderObject() as RenderBox?;
  Offset? position = box?.localToGlobal(Offset.zero); //this is global position
  double y = position?.dy ?? 0; //this is y - I think it's what you want
  double x = position?.dx ?? 0; //this is y - I think it's what you want

  int yOffset = -150;
  y = y + yOffset;

  final contextMenu = ContextMenu(
      entries: entries,
      position: Offset(x, y),
      padding: const EdgeInsets.all(8.0),
      borderRadius: BorderRadius.circular(20));

  showContextMenu(key.currentContext!, contextMenu: contextMenu);
}
