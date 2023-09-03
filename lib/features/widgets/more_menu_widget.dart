import 'package:flutter/material.dart';

enum PopupMenu { edit, delete }

class MoreMenuWidget extends StatefulWidget {
  const MoreMenuWidget(
      {super.key, required this.editFunction, required this.deleteFunction});

  final VoidCallback editFunction;
  final VoidCallback deleteFunction;

  @override
  State<MoreMenuWidget> createState() => _MoreMenuWidgetState();
}

class _MoreMenuWidgetState extends State<MoreMenuWidget> {
  PopupMenu? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupMenu>(
        initialValue: selectedMenu,
        onSelected: (PopupMenu item) {
          setState(() {
            selectedMenu = item;
          });
          switch (item) {
            case PopupMenu.edit:
              widget.editFunction();
              break;
            case PopupMenu.delete:
              widget.deleteFunction();
              break;
          }
        },
        icon: const Icon(
          Icons.more_vert,
          color: Color(0xff717171),
        ),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupMenu>>[
              const PopupMenuItem<PopupMenu>(
                value: PopupMenu.edit,
                child: Text(
                  "Editar",
                ),
              ),
              const PopupMenuItem<PopupMenu>(
                value: PopupMenu.delete,
                child: Text("Eliminar"),
              ),
            ]);
  }
}
