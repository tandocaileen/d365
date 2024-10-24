import 'package:d365_integration/ui/common/app_colors.dart';
import 'package:d365_integration/ui/widgets/root/view_with_header/view_with_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewWithHeaderTitle extends StatelessWidget {
  const ViewWithHeaderTitle(
      {super.key,
      required this.body,
      required this.title,
      this.actionItem,
      this.bottomNavBar,
      this.disabledLeadButton = true,
      this.floatingActionButton,
      this.padding,
      this.isScrollable = false});

  final bool disabledLeadButton;
  final Widget body;
  final String title;
  final Widget? actionItem;
  final Widget? floatingActionButton;
  final EdgeInsets? padding;
  final bool isScrollable;
  final Widget? bottomNavBar;

  @override
  Widget build(BuildContext context) {
    return ViewWithHeader(
      appBar: AppBar(
        backgroundColor: bgWhite,
        surfaceTintColor: bgWhite,
        titleSpacing: disabledLeadButton ? 20.r : 0.r,
        centerTitle: true,
        automaticallyImplyLeading: !disabledLeadButton,
        leading: disabledLeadButton
            ? null
            : Navigator.canPop(context)
                ? IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.chevron_left,
                      color: textColor,
                    ),
                  )
                : null,
        title: Text(title),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.r),
            child: actionItem,
          )
        ],
      ),
      body: isScrollable
          ? SingleChildScrollView(
              child: buildBody(context, body),
            )
          : buildBody(context, body),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavBar,
    );
  }
}

buildBody(BuildContext context, Widget body) {
  return SafeArea(
    child: Padding(
      padding: EdgeInsets.fromLTRB(
          20.r, 16.r, 20.r, MediaQuery.of(context).padding.bottom + 16.r),
      child: body,
    ),
  );
}
