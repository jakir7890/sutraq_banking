import 'package:get/get.dart';
import 'package:squrart_app/views/home_screen/home_screen.dart';

const String home = '/home-screen';

List<GetPage> getPages = [
  GetPage(
    name: home,
    page: () => HomePage(),
  )
];
