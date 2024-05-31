import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_coach/models/intro_screen_model.dart';
import 'package:sport_coach/widgets/buttons/app_text_button.dart';

@RoutePage()
class IntroScreens extends StatefulWidget {
  const IntroScreens({super.key});

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  bool _isLastPage = false;
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _isLastPage = (index == 2);
              });
            },
            // physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildBody(context, introScreenData[0]),
              _buildBody(context, introScreenData[1]),
              _buildBody(context, introScreenData[2]),
            ],
          ),
          // Positioned.fill(
          //   top: 10,
          //   child: Align(
          //     alignment: Alignment.topCenter,
          //     child: Padding(
          //       padding: const EdgeInsets.all(10.0),
          //       child: SmoothPageIndicator(
          //         controller: _controller,
          //         count: 3,
          //         effect: SlideEffect(
          //           radius: 20.0,
          //           dotWidth: 8.0,
          //           dotHeight: 8.0,
          //           paintStyle: PaintingStyle.fill,
          //           dotColor: theme.colorScheme.secondary.withOpacity(0.3),
          //           activeDotColor: theme.colorScheme.secondary,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AppTextButton(
              title: Text(
                'Next',
                style: theme.textTheme.displaySmall,
              ),
              onPressed: () {
                _isLastPage
                    ? context.router.replaceNamed('/home')
                    : _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBody(BuildContext context, IntroScreenModel page) {
  final theme = Theme.of(context);
  return Stack(
    children: [
      Image.asset(
        page.imagePath,
        fit: BoxFit.cover,
      ),
      Positioned.fill(
        top: 100,
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Text(
                page.title,
                style: theme.textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                page.description,
                style: theme.textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
