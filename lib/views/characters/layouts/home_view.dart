import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rick_and_morty_mobx/views/characters/widgets/custom_inkwell.dart';

import '../../../controllers/characters/characters_controller.dart';

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
                  'images/backgroundone.png',
                ),
                fit: BoxFit.fill,
                opacity: 0.8),
          ),
          child: Observer(
            builder: (BuildContext context) {
              var characters = controller.listAllFuture;
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemCount: characters.length,
                itemBuilder: (_, index) {
                  final list = characters[index];
                  return CustomInkwell(
                    image: list.image ?? 'Sem Imagem',
                    name: list.name ?? 'Sem nome',
                    id: list.id ?? 0,
                    onTap: () {},
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
