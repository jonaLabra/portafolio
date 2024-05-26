// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portafolio/generated/l10n.dart';
import 'package:portafolio/models/skills.dart';
import 'package:portafolio/utils/core.dart';
import 'package:portafolio/utils/launcher.dart';
import 'package:portafolio/utils/mouse_transforms/translate_on_hover.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AboutMe extends StatelessWidget {
  AboutMe({super.key, required this.isDesktop});
  bool isDesktop;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return isDesktop
        ? screenDesktop(context, height)
        : screenMobile(context, height);
  }

  Widget screenDesktop(BuildContext context, double height) => Container(
      height: height,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(50),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 20, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 3.0,
                            color: Colors.black54,
                            offset: Offset(3.0, 2.0))
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GradientText(
                        S().textHi,
                        style: ktsTitleText.copyWith(
                          fontSize: getValueForScreenType<double>(
                            context: context,
                            mobile: 10,
                            desktop: 30,
                          ),
                        ),
                        colors: kgSubTitle,
                      )
                          .animate()
                          .shimmer(duration: 1600.ms, color: white)
                          .animate()
                          .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                          .slide(),
                      GradientText(
                        S().textName,
                        style: ktsTitleText.copyWith(
                          fontSize: getValueForScreenType<double>(
                            context: context,
                            mobile: 20,
                            desktop: 50,
                          ),
                        ),
                        colors: kgTitle,
                      )
                          .animate()
                          .shimmer(duration: 1600.ms, color: white)
                          .animate()
                          .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                          .slide(),
                      Flexible(
                        child: Text(
                          S().textHelloIntroduction,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            color: black,
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                            .animate()
                            .shimmer(duration: 1600.ms, color: white)
                            .animate()
                            .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                            .slide(),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            TranslateOnHover(
                              builder: (isHovered) {
                                return IconButton(
                                    onPressed: () async => await Launch()
                                        .ToUrl(Uri.parse(urlLinkedIn)),
                                    icon: Icon(
                                      FontAwesomeIcons.linkedin,
                                      color:
                                          isHovered ? greenAccent700 : black54,
                                    ));
                              },
                            ),
                            TranslateOnHover(
                              builder: (isHovered) {
                                return IconButton(
                                    onPressed: () async => await Launch()
                                        .ToUrl(Uri.parse(ulrGitHub)),
                                    icon: Icon(
                                      FontAwesomeIcons.github,
                                      color:
                                          isHovered ? greenAccent700 : black54,
                                    ));
                              },
                            )
                          ]),
                          GestureDetector(
                            onTap: () async =>
                                await Launch().ToUrl(Uri.parse(ulrCV)),
                            child: TranslateOnHover(builder: (isHovered) {
                              return Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: greenAccent700,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Row(
                                  children: [
                                    Text(S().textSummary,
                                        style: GoogleFonts.roboto(
                                          color: white,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    horizontalSpaceTiny,
                                    Icon(
                                      FontAwesomeIcons.paperPlane,
                                      color: white,
                                    )
                                  ],
                                ),
                              );
                            }),
                          )
                              .animate()
                              .shimmer(duration: 1600.ms, color: white)
                              .animate()
                              .fadeIn(
                                  duration: 1600.ms, curve: Curves.easeInBack)
                              .slide(),
                        ],
                      )
                    ],
                  ),
                )
                        .animate()
                        .shimmer(duration: 1600.ms, color: white)
                        .animate()
                        .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                        .slide()),
                Expanded(
                    child: Container(child: Lottie.asset('lottie/3.json'))
                        .animate()
                        .shimmer(duration: 1600.ms, color: white)
                        .animate()
                        .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                        .slide())
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  GradientText(
                    S().textSkills,
                    style: ktsTitleText.copyWith(
                      fontSize: getValueForScreenType<double>(
                        context: context,
                        mobile: 10,
                        desktop: 28,
                      ),
                    ),
                    colors: kgSubTitle,
                  )
                      .animate()
                      .shimmer(duration: 1600.ms, color: white)
                      .animate()
                      .fade(duration: 1600.ms, curve: Curves.easeInBack)
                      .slide(),
                  verticalSpaceLarge,
                  Expanded(
                    child: ListView.separated(
                        separatorBuilder: (_, __) => Divider(
                              color: transparent!,
                            ),
                        itemCount: skills.length,
                        itemBuilder: (_, index) => TranslateOnHover(
                                builder: (isHovered) => Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 3.0,
                                                color: isHovered
                                                    ? Colors.black54
                                                    : grey350!,
                                                offset: isHovered
                                                    ? const Offset(3.0, 2.0)
                                                    : const Offset(0, 0))
                                          ]),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CircleAvatar(
                                              child: Icon(skills[index].icon)),
                                          horizontalSpaceSmall,
                                          Text(skills[index].name!,
                                              style: GoogleFonts.roboto(
                                                color: white,
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              )),
                                          LinearPercentIndicator(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.28,
                                            animation: true,
                                            lineHeight: 20.0,
                                            animationDuration: 2000,
                                            percent: skills[index].percent!,
                                            center: Text(
                                                "${(skills[index].percent! * 100)}%",
                                                style: GoogleFonts.roboto(
                                                  color: white,
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            barRadius:
                                                const Radius.circular(50),
                                            progressColor: greenAccent700,
                                          )
                                        ],
                                      ),
                                    ))
                            .animate()
                            .shimmer(duration: 1600.ms, color: grey350)
                            .animate()
                            .fade(duration: 1600.ms, curve: Curves.easeInBack)
                            .slide()),
                  ),
                ]),
          ))
        ],
      ));

  Widget screenMobile(BuildContext context, double height) => Container(
      height: height,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(50),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 20, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 3.0,
                            color: Colors.black54,
                            offset: Offset(3.0, 2.0))
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GradientText(
                        S().textHi,
                        style: ktsTitleText.copyWith(
                          fontSize: getValueForScreenType<double>(
                            context: context,
                            mobile: 10,
                            desktop: 30,
                          ),
                        ),
                        colors: kgSubTitle,
                      )
                          .animate()
                          .shimmer(duration: 1600.ms, color: white)
                          .animate()
                          .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                          .slide(),
                      GradientText(
                        S().textName,
                        style: ktsTitleText.copyWith(
                          fontSize: getValueForScreenType<double>(
                            context: context,
                            mobile: 20,
                            desktop: 50,
                          ),
                        ),
                        colors: kgTitle,
                      )
                          .animate()
                          .shimmer(duration: 1600.ms, color: white)
                          .animate()
                          .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                          .slide(),
                      Flexible(
                        child: Text(
                          S().textHelloIntroduction,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            color: black,
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                            .animate()
                            .shimmer(duration: 1600.ms, color: white)
                            .animate()
                            .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                            .slide(),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            TranslateOnHover(
                              builder: (isHovered) {
                                return IconButton(
                                    onPressed: () async => await Launch()
                                        .ToUrl(Uri.parse(urlLinkedIn)),
                                    icon: Icon(
                                      FontAwesomeIcons.linkedin,
                                      color:
                                          isHovered ? greenAccent700 : black54,
                                    ));
                              },
                            ),
                            TranslateOnHover(
                              builder: (isHovered) {
                                return IconButton(
                                    onPressed: () async => await Launch()
                                        .ToUrl(Uri.parse(ulrGitHub)),
                                    icon: Icon(
                                      FontAwesomeIcons.github,
                                      color:
                                          isHovered ? greenAccent700 : black54,
                                    ));
                              },
                            )
                          ]),
                          GestureDetector(
                            onTap: () async =>
                                await Launch().ToUrl(Uri.parse(ulrCV)),
                            child: TranslateOnHover(builder: (isHovered) {
                              return Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: greenAccent700,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Row(
                                  children: [
                                    Text(S().textSummary,
                                        style: GoogleFonts.roboto(
                                          color: white,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    horizontalSpaceTiny,
                                    Icon(
                                      FontAwesomeIcons.paperPlane,
                                      color: white,
                                    )
                                  ],
                                ),
                              );
                            }),
                          )
                              .animate()
                              .shimmer(duration: 1600.ms, color: white)
                              .animate()
                              .fadeIn(
                                  duration: 1600.ms, curve: Curves.easeInBack)
                              .slide(),
                        ],
                      )
                    ],
                  ),
                )
                        .animate()
                        .shimmer(duration: 1600.ms, color: white)
                        .animate()
                        .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                        .slide()),
                Expanded(
                    child: Container(child: Lottie.asset('lottie/3.json'))
                        .animate()
                        .shimmer(duration: 1600.ms, color: white)
                        .animate()
                        .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                        .slide())
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  GradientText(
                    S().textSkills,
                    style: ktsTitleText.copyWith(
                      fontSize: getValueForScreenType<double>(
                        context: context,
                        mobile: 10,
                        desktop: 28,
                      ),
                    ),
                    colors: kgSubTitle,
                  )
                      .animate()
                      .shimmer(duration: 1600.ms, color: white)
                      .animate()
                      .fade(duration: 1600.ms, curve: Curves.easeInBack)
                      .slide(),
                  verticalSpaceLarge,
                  Expanded(
                    child: ListView.separated(
                        separatorBuilder: (_, __) => Divider(
                              color: transparent!,
                            ),
                        itemCount: skills.length,
                        itemBuilder: (_, index) => TranslateOnHover(
                                builder: (isHovered) => Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 3.0,
                                                color: isHovered
                                                    ? Colors.black54
                                                    : grey350!,
                                                offset: isHovered
                                                    ? const Offset(3.0, 2.0)
                                                    : const Offset(0, 0))
                                          ]),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CircleAvatar(
                                              child: Icon(skills[index].icon)),
                                          horizontalSpaceSmall,
                                          Text(skills[index].name!,
                                              style: GoogleFonts.roboto(
                                                color: white,
                                                textStyle: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              )),
                                          LinearPercentIndicator(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.30,
                                            animation: true,
                                            lineHeight: 15.0,
                                            animationDuration: 2000,
                                            percent: skills[index].percent!,
                                            center: Text(
                                                "${(skills[index].percent! * 100)}%",
                                                style: GoogleFonts.roboto(
                                                  color: white,
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall,
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            barRadius:
                                                const Radius.circular(50),
                                            progressColor: greenAccent700,
                                          )
                                        ],
                                      ),
                                    ))
                            .animate()
                            .shimmer(duration: 1600.ms, color: grey350)
                            .animate()
                            .fade(duration: 1600.ms, curve: Curves.easeInBack)
                            .slide()),
                  ),
                ]),
          ))
        ],
      ));
}
