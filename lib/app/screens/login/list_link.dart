import 'package:url_launcher/url_launcher.dart';

void openLink(String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'No se pudo abrir el enlace $url';
  }
}

List<String> listLink = [
  'https://www.studyinjapan.go.jp/en/smap-stopj-applications-teacher.html',
  'https://www.studyinjapan.go.jp/en/_mt/2024/04/2025_Guidelines_Undergraduate_E.pdf',
  'https://www.studyinjapan.go.jp/en/_mt/2024/04/2025_Application_Undergraduate.pdf',
  'https://www.studyinjapan.go.jp/en/_mt/2024/04/2025_SampleRecommendation_Undergraduate.pdf   ',
  'https://www.studyinjapan.go.jp/en/planning/scholarship/application/examination/'
];

List<String> listLink2 = [
  'https://www.studyinjapan.go.jp/en/_mt/2024/04/2025_Guidelines_SpecializedTraining_E.pdf',
  'https://www.studyinjapan.go.jp/en/_mt/2024/04/2025_Application_SpecializedTraining.pdf',
  'https://www.studyinjapan.go.jp/en/_mt/2024/04/2025_Majors_SpecializedTraining.pdf',
  'https://www.studyinjapan.go.jp/en/_mt/2024/04/2025_SampleRecommendation_SpecializedTraining.pdf',
  'https://www.studyinjapan.go.jp/en/planning/scholarship/application/examination/'
];

List<String> listLink3 = [
  'https://www.mext.go.jp/content/20240327-mxt_kotokoku02-000034995-02.pdf',
  'https://www.mext.go.jp/content/20240327-mxt_kotokoku02-000034995-03.pdf',
  'https://www.mext.go.jp/content/20240327-mxt_kotokoku02-000034995-04.pdf',
  'https://www.mext.go.jp/content/20240327-mxt_kotokoku02-000034995-05.pdf',
  'https://www.mext.go.jp/content/20240327-mxt_kotokoku02-000034995-08.pdf',
  'https://www.studyinjapan.go.jp/en/planning/scholarship/application/examination/',
];

void a(int index) {
  if (index >= 0 && index < listLink.length) {
    openLink(listLink[index]);
  } else {
    throw 'Índice fuera de rango';
  }
}
