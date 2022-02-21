import 'package:mobx/mobx.dart';
import 'package:rick_and_morty_mobx/models/characters/results_model.dart';
import 'package:rick_and_morty_mobx/components/network_service.dart';

part 'characters_controller.g.dart';

class CharactersController = CharactersControllerBase with _$CharactersController;

abstract class CharactersControllerBase with Store {
  final NetworkService httpClient = NetworkService();

  @observable
  List<ResultsOne> listAllFuture = [];

  @action
  Future<List<ResultsOne>> fetchAll() async {
    await httpClient
        .getData('https://rickandmortyapi.com/api/character')
        .then((results) => listAllFuture.addAll(results));
    return listAllFuture;
  }

  void getallChar() {
    fetchAll();
  }
}
