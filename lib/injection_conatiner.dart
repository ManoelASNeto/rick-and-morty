import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_mobx/components/network_service.dart';

import 'controllers/characters/characters_controller.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerLazySingleton<NetworkService>(() => NetworkService());
  getIt.registerLazySingleton(() => CharactersController(getIt()));
  await getIt.allReady();
}
