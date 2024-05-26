import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio/pages/aboutMe/about_me.dart';
import 'package:portafolio/pages/home/widgets/nav_bar.dart';
import 'package:portafolio/pages/projects/projects.dart';
import 'package:portafolio/providers/painter_provider.dart';
import 'package:portafolio/utils/core.dart';
import 'package:portafolio/utils/extension/custom_shaape_paint.dart';
import 'package:provider/provider.dart';

class HomeViewDesktop extends StatelessWidget {
  HomeViewDesktop({super.key});
  final ScrollController _controller =
      ScrollController(initialScrollOffset: 0.0);
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final changePages = Provider.of<ChangePages>(context, listen: true);
    return Scaffold(
        backgroundColor: white,
        body: NestedScrollView(
            scrollDirection: Axis.vertical,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverOverlapAbsorber(
                    sliver: SliverSafeArea(
                        top: false,
                        sliver: SliverAppBar(
                          pinned: true,
                          floating: true,
                          snap: false,
                          stretch: false,
                          expandedHeight: 0,
                          actions: navBar(pageController),
                          title: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CircleAvatar(
                                    backgroundColor: grey350,
                                    child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: green,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                          const TextSpan(text: 'J'),
                                          TextSpan(
                                              text: 'L',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: black)),
                                        ]))),
                                Text('Jonathan',
                                    style: GoogleFonts.roboto(
                                      color: black87,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ]),
                          centerTitle: true,
                          backgroundColor: Colors.transparent,
                        )),
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context))
              ];
            },
            body: SingleChildScrollView(
              controller: _controller,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      positionedPainter(context, changePages.page),
                      PageView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: screens.length,
                          controller: pageController,
                          scrollDirection: Axis.vertical,
                          onPageChanged: (value) =>
                              changePages.changePage(value),
                          itemBuilder: (_, index) {
                            return screens[index];
                          }),
                    ],
                  )),
            )));
  }
}

Widget positionedPainter(BuildContext context, int page) => page > 0
    ? Positioned(
        left: -50,
        bottom: 0,
        top: 0,
        child: Transform.scale(
          scaleX: -1,
          child: CustomPaint(
            size: Size(MediaQuery.of(context).size.width * .40,
                MediaQuery.of(context).size.height * .50),
            painter: CustomBackgroundPainter(
                radius: 24, startColor: white!, endColor: greenAccent700),
          ),
        ))
    : Positioned(
        right: -50,
        bottom: 0,
        top: 0,
        child: Transform.scale(
          scaleX: 1,
          child: CustomPaint(
            size: Size(MediaQuery.of(context).size.width * .40,
                MediaQuery.of(context).size.height * .50),
            painter: CustomBackgroundPainter(
                radius: 24, startColor: greenAccent700, endColor: white),
          ),
        ));

List<Widget> screens = [
  AboutMe(
    isDesktop: true,
  ),
  ProjectsScreen(
    isDestop: true,
  ),
];
