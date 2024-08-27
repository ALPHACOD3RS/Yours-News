import 'package:flutter/material.dart';
import 'package:yours_news/shared/constant/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.actions,
    this.title = "",
    this.leading,
    this.leadingPadding = 0.0,
    this.backgroundColor = AppColor.white,
    this.contentColor = AppColor.contentColor,
  });

  final List<Widget>? actions;
  final Widget? leading;
  final String title;
  final double leadingPadding;
  final Color backgroundColor;
  final Color contentColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading != null
          ? Row(
              children: [
                SizedBox(width: leadingPadding),
                leading!,
              ],
            )
          : null,
      leadingWidth: leading != null ? 100 : null,
      backgroundColor: backgroundColor,
      iconTheme: IconThemeData(
        color: contentColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: contentColor,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        ...(actions ?? []),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
