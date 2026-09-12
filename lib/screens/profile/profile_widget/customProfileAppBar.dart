import 'package:flutter/material.dart';

class CustomProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackTap;
  final IconData? actionIcon;
  final VoidCallback? onActionTap;

  const CustomProfileAppBar({
    super.key,
    required this.title,
    this.onBackTap,
    this.actionIcon,
    this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leadingWidth: 62,
      leading: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            height: 42,
            width: 42,
            decoration: const BoxDecoration(
              color: Color(0xFFF6F6F6),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 16,
                color: Colors.black,
              ),
              onPressed: onBackTap ?? () => Navigator.maybePop(context),
            ),
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        if (actionIcon != null)
          Center(
            child: Container(
              height: 42,
              width: 42,
              margin: const EdgeInsets.only(right: 20),
              decoration: const BoxDecoration(
                color: Color(0xFFF6F6F6),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: Icon(
                  actionIcon,
                  size: 18,
                  color: Colors.black,
                ),
                onPressed: onActionTap ?? () {},
              ),
            ),
          )
        else

          const SizedBox(width: 62),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}