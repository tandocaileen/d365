import 'package:d365_integration/ui/common/app_colors.dart';
import 'package:d365_integration/ui/widgets/root/view_with_header/view_with_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewWithHeaderContents extends StatelessWidget {
  final VoidCallback backButtonCallback;
  final Widget body;
  final String title;
  final Widget headerContent;
  final Widget? floatingActionButton;
  final Widget? bottomNavBar;
  const ViewWithHeaderContents(
      {required this.backButtonCallback,
      required this.body,
      required this.title,
      required this.headerContent,
      this.bottomNavBar,
      this.floatingActionButton,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ViewWithHeader(
      appBar: AppBar(
        backgroundColor: bgWhite,
        centerTitle: true,
        leading: Navigator.canPop(context)
            ? IconButton(
                onPressed: backButtonCallback,
                icon: const Icon(Icons.chevron_left),
              )
            : null,
        title: Text(title),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8.r),
            child: headerContent,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              8.r, 16.r, 8.r, MediaQuery.of(context).padding.bottom + 16.r),
          child: body,
        ),
      ),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavBar,
    );
  }
}
