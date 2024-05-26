import 'package:flutter/material.dart';
import 'package:portafolio/generated/l10n.dart';
import 'package:portafolio/utils/core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portafolio/utils/mouse_transforms/scale_on_hover.dart';

List<Widget> navBar(PageController pageController) => [
      horizontalSpaceMedium,
      ScaleOnHover(builder: (bool isHovered) {
        return GestureDetector(
          onTap: () => pageController.animateToPage(0,
              duration: const Duration(milliseconds: 1000),
              curve: Curves.bounceOut),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                FontAwesomeIcons.person,
                color: isHovered ? greenAccent700 : black54,
              ),
              horizontalSpaceMedium,
              Text(S().textAboutMe,
                  style: TextStyle(
                    color: isHovered ? greenAccent700 : black54,
                  )),
            ],
          ),
        );
      }),
      horizontalSpaceMedium,
      ScaleOnHover(builder: (bool isHovered) {
        return GestureDetector(
          onTap: () => pageController.animateToPage(1,
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeInExpo),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                FontAwesomeIcons.diagramProject,
                color: isHovered ? greenAccent700 : black54,
              ),
              horizontalSpaceMedium,
              Text(S().textProjects,
                  style: TextStyle(
                    color: isHovered ? greenAccent700 : black54,
                  )),
            ],
          ),
        );
      })
    ];

Widget drawerNavigation(BuildContext context, PageController pageController) =>
    Drawer(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(20.0),
        bottomRight: Radius.circular(20.0),
      )),
      backgroundColor: white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [_buildMenuItems(context, pageController)],
        ),
      ),
    );

Widget _buildMenuItems(BuildContext context, PageController pageController) =>
    Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(children: [
          ScaleOnHover(builder: (isHovered) {
            return ListTile(
                title: Text(
                  S().textAboutMe,
                  style: TextStyle(fontSize: 20, color: greenAccent700),
                ),
                trailing: Icon(
                  FontAwesomeIcons.person,
                  color: greenAccent700,
                ),
                onTap: () {
                  Navigator.pop(context);
                  pageController.animateToPage(0,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInExpo);
                });
          }),
          const Divider(),
          ScaleOnHover(builder: (isHovered) {
            return ListTile(
                title: Text(
                  S().textProjects,
                  style: TextStyle(fontSize: 20, color: greenAccent700),
                ),
                trailing: Icon(
                  FontAwesomeIcons.diagramProject,
                  color: greenAccent700,
                ),
                onTap: () {
                  Navigator.pop(context);
                  pageController.animateToPage(1,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInExpo);
                });
          })
        ]));
