class PlanetsModel {
  final String? image;
  final String? name;
  final double? size;
  final int? distanceFromSun;

  PlanetsModel(
      {required this.size,
      required this.distanceFromSun,
      required this.image,
      required this.name});
}

List<PlanetsModel> planets = [
  PlanetsModel(
      image: 'mercury.png',
      name: 'عطارد',
      size: 4879,
      distanceFromSun: 57900000),
  PlanetsModel(
      image: 'venus.png',
      name: 'الزهرة',
      size: 12104,
      distanceFromSun: 108200000),
  PlanetsModel(
      image: 'earth.png',
      name: 'الأرض',
      size: 12756,
      distanceFromSun: 149600000),
  PlanetsModel(
      image: 'mars.png',
      name: 'المريخ',
      size: 6805,
      distanceFromSun: 227900000),
  PlanetsModel(
      image: 'jupiter.png',
      name: 'المشتري',
      size: 142984,
      distanceFromSun: 778300000),
  PlanetsModel(
      image: 'saturn.png',
      name: 'زحل',
      size: 120536,
      distanceFromSun: 1426720000),
  PlanetsModel(
      image: 'uranus.png',
      name: 'أورانوس',
      size: 51118,
      distanceFromSun: 2870970000),
  PlanetsModel(
      image: 'neptunes.png',
      name: 'نبتون',
      size: 49528,
      distanceFromSun: 4498250000),
  PlanetsModel(
      image: 'pluto.png',
      name: 'بلوتو',
      size: 2376.6,
      distanceFromSun: 5906376272),
];

String astronomicalNews =
    'لطالما حدق الناس حول العالم في النجوم ووجدوا فيها معاني عميقة. كتب نيكولاس كوبرنيكوس، العالم البارز في عصر النهضة، قائلاً: "من بين كل الأشياء المرئية، الأعلى هو سماء النجوم الثابتة." وبعد خمسة قرون، قالت كالبانا شاولا، أول امرأة هندية تصل إلى الفضاء: "عندما تنظر إلى النجوم والمجرة، تشعر أنك لا تنتمي فقط إلى قطعة أرض معينة، بل إلى النظام الشمسي بأكمله."';
