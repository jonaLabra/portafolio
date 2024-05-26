// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portafolio/generated/l10n.dart';
import 'package:portafolio/models/project.dart';
import 'package:portafolio/utils/core.dart';
import 'package:portafolio/utils/launcher.dart';
import 'package:portafolio/utils/mouse_transforms/scale_on_hover.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProjectsScreen extends StatefulWidget {
  ProjectsScreen({super.key, required this.isDestop});
  bool? isDestop;

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  int activeIndex = 0;

  final controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return widget.isDestop! ? screenDesktop() : screenMobile();
  }

  Widget screenDesktop() => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              flex: 3,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: GradientText(
                      S().textExperience,
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
                        .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                        .slide(),
                  ),
                  Container(child: Lottie.asset('lottie/1.json'))
                      .animate()
                      .shimmer(duration: 1600.ms, color: white)
                      .animate()
                      .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                      .slide()
                ],
              )),
          Expanded(
              flex: 7,
              child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('App',
                                  style: GoogleFonts.roboto(
                                    color: black87,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Icon(
                                FontAwesomeIcons.mobileScreen,
                                color: black87,
                              )
                            ],
                          )
                              .animate()
                              .slideY(
                                  duration: 2000.ms, curve: Curves.easeInBack)
                              .fadeIn(),
                          carouselWidget(projectsExperienceApp, true)
                              .animate()
                              .slideY(
                                  duration: 2000.ms, curve: Curves.easeInBack)
                              .fadeIn(),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Web',
                                  style: GoogleFonts.roboto(
                                    color: black87,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Icon(
                                FontAwesomeIcons.chrome,
                                color: black87,
                              )
                            ],
                          )
                              .animate()
                              .slideY(
                                  duration: 2000.ms, curve: Curves.easeInBack)
                              .fadeIn(),
                          carouselWidget(projectsExperienceWeb, true)
                              .animate()
                              .slideY(
                                  duration: 2000.ms, curve: Curves.easeInBack)
                              .fadeIn(),
                        ],
                      ))
                    ],
                  )))
        ],
      );

  Widget screenMobile() => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              flex: 3,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: GradientText(
                      S().textExperience,
                      style: ktsTitleText.copyWith(
                        fontSize: getValueForScreenType<double>(
                          context: context,
                          mobile: 15,
                          desktop: 28,
                        ),
                      ),
                      colors: kgSubTitle,
                    )
                        .animate()
                        .shimmer(duration: 1600.ms, color: white)
                        .animate()
                        .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                        .slide(),
                  ),
                  SizedBox(
                          height: MediaQuery.of(context).size.height * .30,
                          child: Lottie.asset('lottie/1.json'))
                      .animate()
                      .shimmer(duration: 1600.ms, color: white)
                      .animate()
                      .fadeIn(duration: 1600.ms, curve: Curves.easeInBack)
                      .slide()
                ],
              )),
          Expanded(
              flex: 7,
              child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                        color: black,
                        child: Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('App',
                                    style: GoogleFonts.roboto(
                                      color: black87,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Icon(
                                  FontAwesomeIcons.mobileScreen,
                                  color: black87,
                                )
                              ],
                            )
                                .animate()
                                .slideY(
                                    duration: 2000.ms, curve: Curves.easeInBack)
                                .fadeIn(),
                            carouselWidget(projectsExperienceApp, false)
                                .animate()
                                .slideY(
                                    duration: 2000.ms, curve: Curves.easeInBack)
                                .fadeIn(),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        color: blue,
                        child: Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Web',
                                    style: GoogleFonts.roboto(
                                      color: black87,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Icon(
                                  FontAwesomeIcons.chrome,
                                  color: black87,
                                )
                              ],
                            )
                                .animate()
                                .slideY(
                                    duration: 2000.ms, curve: Curves.easeInBack)
                                .fadeIn(),
                            carouselWidget(projectsExperienceWeb, false)
                                .animate()
                                .slideY(
                                    duration: 2000.ms, curve: Curves.easeInBack)
                                .fadeIn(),
                          ],
                        ),
                      ))
                    ],
                  )))
        ],
      );

  Widget carouselWidget(List<Project> projectsExperience, bool isDesktop) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
              disableGesture: true,
              carouselController: controller,
              itemCount: projectsExperience.length,
              itemBuilder: (context, index, realIndex) {
                return buildImage(
                    context,
                    projectsExperience[index].urlImages!,
                    projectsExperience[index].name!,
                    projectsExperience[index].description!,
                    projectsExperience[index].tecnology,
                    projectsExperience[index].findProject,
                    index,
                    isDesktop);
              },
              options: CarouselOptions(
                  height: isDesktop
                      ? kdDesktopMaxContentHeight * 0.7
                      : kdDesktopMaxContentHeight * 0.3,
                  autoPlay: false,
                  enableInfiniteScroll: false,
                  aspectRatio: 2.0,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlayCurve: Curves.easeOutSine,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index))),
          const SizedBox(height: 12),
          buildIndicator(projectsExperience)
        ],
      );

  Widget buildIndicator(projects) => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect:
            ExpandingDotsEffect(dotWidth: 15, activeDotColor: greenAccent700!),
        activeIndex: activeIndex,
        count: projects.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);

  Widget buildImage(
          BuildContext context,
          String img,
          String name,
          String description,
          List<Map<IconData, String>>? tecnology,
          List<Map<IconData, String>>? findProject,
          int index,
          bool isDesktop) =>
      Container(
        height: kdDesktopMaxContentHeight * 0.5,
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: white),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  img,
                  fit: BoxFit.contain,
                  height: kdDesktopMaxContentHeight * 0.5,
                  width: kdDesktopMaxContentWidth,
                )),
            Positioned(
                top: 0,
                child: Container(
                  width: isDesktop
                      ? MediaQuery.of(context).size.width * .47
                      : MediaQuery.of(context).size.width * .90,
                  height: isDesktop ? 50 : 25,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(0, 1),
                          blurRadius: 5,
                          spreadRadius: 0,
                        )
                      ]),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\t $name',
                        style: TextStyle(
                            fontSize: isDesktop ? 25 : 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          children: findProject!
                              .map((find) =>
                                  ScaleOnHover(builder: (bool isHovered) {
                                    return IconButton(
                                      onPressed: () => Launch()
                                          .ToUrl(Uri.parse(find.values.first)),
                                      icon: Icon(
                                        find.keys.first,
                                        color:
                                            isHovered ? greenAccent700 : white,
                                      ),
                                    );
                                  }))
                              .toList())
                    ],
                  ),
                )),
            Positioned(
                bottom: 0,
                child: Container(
                  width: isDesktop
                      ? MediaQuery.of(context).size.width * .47
                      : MediaQuery.of(context).size.width * .90,
                  height: isDesktop ? 70 : 35,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(0, 1),
                          blurRadius: 5,
                          spreadRadius: 0,
                        )
                      ]),
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(description,
                            style: GoogleFonts.roboto(
                              color: white,
                              textStyle: Theme.of(context).textTheme.bodySmall,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            )),
                        Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: tecnology!
                                .map((tec) =>
                                    ScaleOnHover(builder: (bool isHovered) {
                                      return Column(
                                        children: [
                                          Icon(
                                            tec.keys.first,
                                            color: isHovered
                                                ? greenAccent700
                                                : white,
                                          ),
                                          horizontalSpaceMedium,
                                          Text(
                                            tec.values.first,
                                            style: GoogleFonts.roboto(
                                              color: isHovered
                                                  ? greenAccent700
                                                  : white,
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium,
                                              fontSize: 10,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          )
                                        ],
                                      );
                                    }))
                                .toList())
                      ],
                    ),
                  ),
                ))
          ],
        ),
      );
}
