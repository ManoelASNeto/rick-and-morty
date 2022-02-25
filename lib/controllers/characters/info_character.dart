import 'package:mobx/mobx.dart';
import 'package:rick_and_morty_mobx/components/network_service.dart';
import 'package:rick_and_morty_mobx/models/characters/results_model.dart';

part 'info_character.g.dart';

class InfoCharacterController = InfoCharacterControllerBase with _$InfoCharacterController;

abstract class InfoCharacterControllerBase with Store {
  final NetworkService httpClient = NetworkService();

  ObservableList<AllCharacters> todo = ObservableList<AllCharacters>();
}
