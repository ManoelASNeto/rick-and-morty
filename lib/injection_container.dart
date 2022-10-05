import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_mobx/components/network_service.dart';
import 'package:http/http.dart' as http;

import 'controllers/characters/characters_controller.dart';

GetIt getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerLazySingleton(() => http.Client());
  getIt.registerLazySingleton<NetworkService>(() => NetworkService());
  getIt.registerLazySingleton<CharactersController>(
      () => CharactersController(getIt()));
  await getIt.allReady();
}
