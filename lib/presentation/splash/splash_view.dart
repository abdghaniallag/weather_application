import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_application/presentation/resource/assets_manager.dart';
import 'package:weather_application/presentation/resource/strings_manager.dart';

import '../resource/color_manager.dart';
import '../resource/routes_manager.dart';
import '../resource/styles_manager.dart';
import '../resource/values_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(Duration(seconds: 3), _goNext);
  }

  _goNext() async {
    // if (true) {
    //   Navigator.pushReplacementNamed(context, Routes.mainRoute);
    // } else {

    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);

    // }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.primary, body: _getContainerWidget());
  }

  Widget _getContainerWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: AppSize.s100),
        SvgPicture.asset(ImageAssets.logoIc),
        const SizedBox(height: AppSize.s0),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p6),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.weather,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                    textScaleFactor: 1.8,
                  ),
                  const SizedBox(width: AppSize.s4),
                  Text(
                    AppStrings.news,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2,
                    textScaleFactor: 1.8,
                  ),
                ],
              ),
              Text(
                AppStrings.feed,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2,
                textScaleFactor: 1.8,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            AppStrings.onBoardingSubTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size.fromWidth(AppSize.s280),
              textStyle: getRegularStyle(color: ColorManager.black),
              primary: ColorManager.secondary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)),
            ),
            onPressed: () {},
            child: Text(
              AppStrings.start,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.button,
            )),
        const SizedBox(
          height: AppSize.s20,
        ),
      ],
    );
  }
}
