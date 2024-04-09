part of 'home_page_view.dart';

class HomePageProvider extends ChangeNotifier {
  final BuildContext context;
  final String name = "My name";

  HomePageProvider(
    this.context,
  );
}
