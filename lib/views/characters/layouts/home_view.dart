import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rick_and_morty_mobx/controllers/characters/characters_controller.dart';
import 'package:rick_and_morty_mobx/models/characters/results_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CharactersController controller = CharactersController();
  List<ResultsOne> characters = [];

  @override
  void initState() {
    super.initState();
    getAll();
  }

  getAll() async {
    await controller.fetchAll();
    characters.addAll(controller.listAllFuture);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('images/fundo.jpg'), fit: BoxFit.cover),
        ),
        child: Card(
          color: Colors.transparent.withOpacity(0.2),
          shadowColor: Colors.green,
          margin: const EdgeInsets.fromLTRB(30, 175, 30, 20),
          elevation: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Observer(
            builder: (_) {
              controller.fetchAll();
              return (characters.isNotEmpty)
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: characters.length,
                        itemBuilder: (_, index) {
                          final list = characters[index];
                          return ListTile(
                            title: Text(
                              list.name ?? 'Sem Nome',
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            subtitle: Text(
                              list.status ?? 'Desconhecido',
                              style: const TextStyle(fontSize: 18),
                            ),
                          );
                        },
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    );
            },
          ),
        ),
      ),
    );
  }
}
