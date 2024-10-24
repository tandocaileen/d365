import 'package:d365_integration/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewWithoutHeader extends StatelessWidget {
  final Widget body;
  final Color? scaffoldColor;
  final bool resizeToAvoidBottomInset;
  final Widget? floatingActionButton;
  final Widget? bottomSheet;
  final Widget? bottomNavBar;
  const ViewWithoutHeader(
      {required this.body,
      this.resizeToAvoidBottomInset = true,
      this.floatingActionButton,
      this.bottomSheet,
      this.bottomNavBar,
      this.scaffoldColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
              padding: EdgeInsets.fromLTRB(20.r, 16.r, 20.r,
                  MediaQuery.of(context).padding.bottom + 16.r),
              child: body,
            )),
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: floatingActionButton,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomSheet: bottomSheet != null
          ? ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Container(
                color: backgroundColor,
                padding: EdgeInsets.all(16.r),
                child: bottomSheet,
              ),
            )
          : null,
      bottomNavigationBar: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
          ),
          child: bottomNavBar),
    );
  }
}
