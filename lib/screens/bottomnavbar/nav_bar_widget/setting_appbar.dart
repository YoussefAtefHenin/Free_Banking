import 'package:flutter/material.dart';

class SettingAppbar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBackTap;
  final VoidCallback? onActionTap;

  const SettingAppbar({
    super.key,
    this.onBackTap,
    this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leadingWidth: 60,
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
      title: const Text(
        'Settings',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
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
              icon: const Icon(
               Icons.login_outlined,
                size: 18,
                color: Colors.black,
              ),
              onPressed: onActionTap ?? () {},
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}