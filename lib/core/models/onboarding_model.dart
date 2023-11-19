class OnBoardingModel {
  final String title;
  final String description;
  final String imagePath;

  const OnBoardingModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

final List<OnBoardingModel> onBoardingItems = [
  const OnBoardingModel(
    title: 'Algorithm',
    description:
        'Users going through a vetting process to ensure you never match with bots.',
    imagePath: 'assets/images/girl1.png',
  ),
  const OnBoardingModel(
    title: 'Matches',
    description:
        'We match you with people that have a large array of similar interests.',
    imagePath: 'assets/images/girl2.png',
  ),
  const OnBoardingModel(
    title: 'Premium',
    description:
        'Sign up today and enjoy the first month of premium benefits on us.',
    imagePath: 'assets/images/girl3.png',
  ),
];
