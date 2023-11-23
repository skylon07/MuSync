import 'package:flutter/foundation.dart';
import 'package:flutter_modified/material.dart';

import 'package:musync/widgets/icons.dart';
import 'package:musync/widgets/dialogs.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: _PlaylistScreenAppBar(),
      ),
      body: _PlaylistScreenBody(),
    );
  }
}

class _PlaylistScreenAppBar extends StatelessWidget {
  const _PlaylistScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const MenuIcon(),
                onPressed: () => showAlertingDialog(context, title: "Menu Clicked!"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: kDebugMode ? 45 : 0),
                child: IconButton(
                  icon: const MusicNoteWithPlusIcon(),
                  onPressed: () => showAlertingDialog(context, title: "Add Song Clicked!"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PlaylistScreenBody extends StatelessWidget {
  const _PlaylistScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        for (var itemIdx = 1; itemIdx <= 20; ++itemIdx)
          Padding(
            padding: EdgeInsets.only(top: itemIdx > 1 ? 20 : 0),
            child: _PlaylistScreenItem(itemName: "Song$itemIdx"),
          ),  
      ],
    );
  }
}

class _PlaylistScreenItem extends StatelessWidget {
  final String itemName;

  const _PlaylistScreenItem({
    super.key,
    required this.itemName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(itemName),
          ),
          IconButton(
            icon: const MoreIcon(),
            onPressed: () => showAlertingDialog(context, title: "More Clicked! ($itemName)"),
          ),
        ],
      ),
    );
  }
}
