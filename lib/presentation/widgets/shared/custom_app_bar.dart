import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({
    super.key,
    this.height = 60,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://th.bing.com/th/id/OIP.dErQCP3sCP_zAX_LSvRpvgHaKS?w=198&h=275&c=7&r=0&o=5&pid=1.7'),
        ),
      ),
      centerTitle: false,
      title: const Text('My Love'),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
