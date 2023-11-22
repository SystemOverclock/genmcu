import 'package:genmcu/app/core/utils/utils.dart';
import 'package:genmcu/app/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoadingIndicator {
  static TransitionBuilder init(
      {TransitionBuilder? builder, required bool status}) {
    return (BuildContext context, Widget? child) {
      Widget loading = LoadingScreenOverlay(
        status: status,
        child: child!,
      );
      if (builder != null) {
        return builder(context, loading);
      }
      return loading;
    };
  }
}

class LoadingScreenOverlay extends StatelessWidget {
  final Widget child;
  final bool status;

  const LoadingScreenOverlay(
      {super.key, required this.child, required this.status});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
          children: [
            child,
            status
                ? SizedBox(
                    width: AppScreenSize.screenWidth,
                    height: AppScreenSize.screenHeight,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [AppSpinner()],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
