import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:genmcu/app/core/const/const.dart';
import 'package:genmcu/app/core/utils/utils.dart';
import 'package:genmcu/app/core/widgets/widgets.dart';
import 'package:genmcu/app/modules/home/presentation/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.asset(
              "assets/images/marvels-team.png",
              height: AppScreenSize.screenHeight,
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.only(top: AppConstant.topSpace),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/marvel-logo-s-background.png",
                  width: (AppScreenSize.screenWidth * 0.33),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (AppScreenSize.screenHeight * 0.4),
                left: AppConstant.smallPadding,
                right: AppConstant.smallPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "mcu",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ).tr(),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: AppConstant.mediumPadding),
                    child: AppMoviesList(
                      listTitle: tr("timeline"),
                      movies: controller.moviesByTimeline,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: AppConstant.smallPadding),
                    child: AppMoviesList(
                      listTitle: tr("orderByName"),
                      movies: controller.moviesByName,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: AppConstant.smallPadding),
                    child: AppMoviesList(
                      listTitle: tr("latest"),
                      movies: controller.moviesNewerByReleaseDate,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: AppConstant.smallPadding),
                    child: AppMoviesList(
                      listTitle: tr("oldest"),
                      movies: controller.moviesOlderByReleaseDate,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/images/marvel-logo.gif",
              fit: BoxFit.fitHeight,
              height: AppScreenSize.screenHeight,
            ),
          ],
        ),
      ),
    );
  }
}
