import 'package:mobx/mobx.dart';
import 'package:rick_and_morty_mobx/components/network_service.dart';
import 'package:rick_and_morty_mobx/models/response_model.dart';

part 'characters_controller.g.dart';

class CharactersController = CharactersControllerBase with _$CharactersController;

abstract class CharactersControllerBase with Store {
  final httpClient = NetworkService();

  @observable
  Response? data;

  @action
  Future<Response?> fetchAll() async {
    var response = await httpClient.getData();
    data = response;
    return data;
  }

  @action
  Future<Response?> nextPage(String? url) async {
    var response = await httpClient.nextPage(url);
    data = response;
    return data;
  }

  @action
  Future<Response?> prevPage(String? url) async {
    var response = await httpClient.prevPage(url);
    data = response;
    return data;
  }
}
