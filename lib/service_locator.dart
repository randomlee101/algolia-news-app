import 'package:algolia_news_app/logic/logic.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void serviceLocator()
{
  locator.registerLazySingleton(() => JobsBLoC());
  locator.registerLazySingleton(() => StoriesBLoC());
}