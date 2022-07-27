import 'package:provider/single_child_widget.dart';

//Provider setup
List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders,
];

List<SingleChildWidget> independentServices = [
  // ChangeNotifierProvider.value(value: UserProvider()),
  // ChangeNotifierProvider.value(value: CardProvider()),
  // ChangeNotifierProvider.value(value: MessageProvider()),
];

List<SingleChildWidget> dependentServices = [];

List<SingleChildWidget> uiConsumableProviders = [];
