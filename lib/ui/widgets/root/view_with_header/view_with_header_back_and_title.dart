import 'package:d365_integration/ui/common/app_colors.dart';
import 'package:d365_integration/ui/widgets/root/view_with_header/view_with_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewWithBackAndTitle extends StatelessWidget {
  final VoidCallback backButtonCallback;
  final String title;
  final Widget body;
  final Widget? floatingActionButton;
  const ViewWithBackAndTitle(
      {required this.backButtonCallback,
      required this.title,
      required this.body,
      this.floatingActionButton,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ViewWithHeader(
      appBar: AppBar(
        backgroundColor: bgWhite,
        centerTitle: true,
        leading: Navigator.canPop(context)
            ? Padding(
                padding: EdgeInsets.only(left: 15.r),
                child: IconButton(
                  onPressed: () {
                    backButtonCallback();
                    // Navigator.pop(context);
                  },
                  icon: const Icon(Icons.chevron_left),
                ))
            : null,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.fromLTRB(
              20.r, 16.r, 20.r, MediaQuery.of(context).padding.bottom + 16.r),
          child: body,
        )),
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
