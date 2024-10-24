import 'package:d365_integration/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewWithHeader extends StatelessWidget {
  final AppBar appBar;
  final Widget body;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  const ViewWithHeader(
      {required this.appBar,
      required this.body,
      this.floatingActionButton,
      super.key,
      this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgWhite,
      resizeToAvoidBottomInset: true,
      appBar: appBar,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600), child: body),
      ),
      floatingActionButton: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600),
        child: Padding(
          padding:
              EdgeInsets.only(left: 15.r, right: 15.r, bottom: 20.r, top: 30.r),
          child: floatingActionButton,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
