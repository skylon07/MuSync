import 'package:flutter_modified/material.dart';


// BASIC ICONS //

class MenuIcon extends StatelessWidget {
  final double? size;

  const MenuIcon({
    super.key,
    this.size,
  });

  @override
  Widget build(BuildContext context) => Icon(Icons.menu, size: size);
}

class MoreIcon extends StatelessWidget {
  final double? size;

  const MoreIcon({
    super.key,
    this.size,
  });

  @override
  Widget build(BuildContext context) => Icon(Icons.more_vert, size: size);
}


// STACKED ICONS //

class _StackedIcon extends StatelessWidget {
  final Widget baseIcon;
  final List<Positioned> extras;

  const _StackedIcon({
    super.key,
    required this.baseIcon,
    this.extras = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        baseIcon,
        ...extras,
      ],
    );
  }
}

class MusicNoteWithPlusIcon extends StatelessWidget {
  final double? size;

  const MusicNoteWithPlusIcon({
    super.key,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    var iconSize = size ?? _defaultSize(context);

    return _StackedIcon(
      baseIcon: Icon(Icons.music_note, size: iconSize),
      extras: [
        Positioned(
          top: (iconSize ?? 0) / 50,    // align with top of music note
          left: -(iconSize ?? 0) / 50,  // align with left buldge of music note
          child: Icon(Icons.add, size: iconSize != null ? iconSize / 2 : null),
        ),
      ],
    );
  }

  // intended to emulate `Icon` behavior in flutter's `widgets/icon.dart`
  double? _defaultSize(BuildContext context) => IconTheme.of(context).size;
}
