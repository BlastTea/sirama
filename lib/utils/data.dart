part of 'utils.dart';

// class SiramaIcon {
//   final String icon;
//   final String title;
//   final Color? color;
//   final String? route;

//   SiramaIcon({required this.icon, required this.title, this.color, this.route});
// }

List<Map<String, String>> siramaIcon = [
  {'icon': 'skrining-menu-icon', 'title': 'Screening', 'route': '/screening'},
  {'icon': 'infografis-menu-icon', 'title': 'Infografis', 'route': '/infographics'},
  {'icon': 'film-menu-icon', 'title': 'Film', 'route': '/film'},
  {'icon': 'podcast-menu-icon', 'title': 'Podcast', 'route': '/podcast'},
  {'icon': 'video-edukasi-menu-icon', 'title': 'Video Edukasi', 'route': '/educational-video'},
  {'icon': 'tanya-ahli-menu-icon', 'title': 'Tanya Ahli', 'route': '/asktheexpert'},
];

List<Map<String, dynamic>> checkboxHomeFragment = [
    {'text1': 'Berpamitan kepada orang tua', 'value1': false},
    {'text2': 'Berdoa sebelum belajar', 'value2': false},
    {'text3': 'Menyapa kepada teman', 'value3': false},
  ];