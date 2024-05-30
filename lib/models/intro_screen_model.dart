class IntroScreenModel {
  final String title;
  final String description;
  final String imagePath;

  IntroScreenModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

final List<IntroScreenModel> introScreenData = [
  IntroScreenModel(
    title: '',
    description: '',
    imagePath: 'assets/images/intro1.png',
  ),
  IntroScreenModel(
    title: 'Rate our app in the \nAppStore',
    description: '',
    imagePath: 'assets/images/intro2.png',
  ),
  IntroScreenModel(
    title: 'Don’t miss \nanything',
    description: '',
    imagePath: 'assets/images/intro3.png',
  ),
];

final List<IntroScreenModel> introScreenDataReview = [
  IntroScreenModel(
    title: 'Track the results',
    description: 'Your athletes and teams',
    imagePath: 'assets/images/intro1_preview.png',
  ),
  IntroScreenModel(
    title: 'Create workouts',
    description: 'for your athletes or the whole team',
    imagePath: 'assets/images/intro2_preview.png',
  ),
  IntroScreenModel(
    title: 'Record events',
    description: 'Don\'t miss a single competition',
    imagePath: 'assets/images/intro3_preview.png',
  ),
];
