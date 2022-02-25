import 'package:mobx/mobx.dart';
import 'package:rick_and_morty_mobx/models/characters/results_model.dart';
import 'package:rick_and_morty_mobx/components/network_service.dart';

part 'characters_controller.g.dart';

class CharactersController = CharactersControllerBase with _$CharactersController;

abstract class CharactersControllerBase with Store {
  final httpClient = NetworkService();

  @observable
  List<AllCharacters> listAllFuture = [];

  @action
  Future<List<AllCharacters>> fetchAll() async {
    var response = await httpClient.getData();
    // await httpClient
    //     .getData('')
    //     .then((results) => listAllFuture.addAll(results));
    listAllFuture = response;
    return listAllFuture;
  }

  void getallChar() {
    fetchAll();
  }
}
