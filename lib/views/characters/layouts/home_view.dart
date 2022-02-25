import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:rick_and_morty_mobx/controllers/characters/characters_controller.dart';
import 'package:rick_and_morty_mobx/models/characters/results_model.dart';
import 'package:rick_and_morty_mobx/views/characters/layouts/info_character.dart';
import 'package:rick_and_morty_mobx/views/characters/layouts/second_view.dart';
import 'package:rick_and_morty_mobx/views/characters/widgets/vertical_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final CharactersController controller = CharactersController();
  // List<AllCharacters> characters = [];

  @override
  void initState() {
    super.initState();
    controller.fetchAll();
  }

  getAll() async {
    await controller.fetchAll();
    // characters.addAll(controller.listAllFuture);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/fundo.jpg',
                ),
                fit: BoxFit.cover,
                opacity: 0.8),
          ),
          child: Observer(
            builder: (BuildContext context) {
              var characters = controller.listAllFuture;
              return ListView.builder(
                itemCount: characters.length,
                itemBuilder: (_, index) {
                  final list = characters[index];
                  return Column(
                    children: [
                      Text(list.id.toString()),
                      Text(list.name ?? ''),
                      Text(list.gender ?? ''),
                      Text(list.type ?? ''),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
