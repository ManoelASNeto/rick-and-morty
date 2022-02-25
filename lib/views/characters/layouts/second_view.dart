import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rick_and_morty_mobx/controllers/characters/characters_controller.dart';
import 'package:rick_and_morty_mobx/controllers/characters/info_character.dart';
import 'package:rick_and_morty_mobx/views/characters/layouts/info_character.dart';

import '../../../models/characters/results_model.dart';

/*class SecondView extends StatefulWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  final InfoCharacterController controller = InfoCharacterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (BuildContext context) {
          var  a = controller.todo;
          return InfoCharacters(
            name: controller.todo.name,
            gender: ,
            image: controller.image ?? '',
            species: list.species ?? '',
            status: list.status ?? '',
            type: list.type ?? '',
          );
        },
      ),
    );
  }
}*/
