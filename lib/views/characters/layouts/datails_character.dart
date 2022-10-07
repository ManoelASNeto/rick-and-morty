import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rick_and_morty_mobx/views/characters/layouts/home_view.dart';

class DetailsCharacter extends StatelessWidget {
  final String? image, name, status, species, gender, origin, location;
  final int? id;

  const DetailsCharacter(
      {Key? key,
      this.image,
      this.name,
      this.status,
      this.species,
      this.gender,
      this.id,
      this.origin,
      this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpeg'),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Hero(
              tag: 'dash',
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width,
                      height: size.height / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(image!), fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        '#$id - $name',
                        style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.transparent,
                      elevation: 10,
                      shadowColor: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Genero: ${_switchGender(gender)}',
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Status:',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                _switchLife(status),
                                Text(
                                  ' - ${_switchStatus(status)}',
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Planeta: $origin',
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Visto por ultimo: $location',
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop(
                          MaterialPageRoute(
                            builder: (_) => const HomeView(),
                          ),
                        );
                      },
                      icon: const Icon(
                        MdiIcons.arrowLeftBoldCircleOutline,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _switchStatus(String? status) {
    switch (status) {
      case 'Alive':
        return 'Vivo';
      case 'Dead':
        return 'Morto';
      case 'unknown':
        return 'Desconhecido';
      default:
        return '';
    }
  }

  String _switchGender(String? gender) {
    switch (gender) {
      case 'Female':
        return 'Feminino';
      case 'Male':
        return 'Masculino';
      default:
        return '';
    }
  }

  Widget _switchLife(String? status) {
    switch (status) {
      case 'Alive':
        return const Icon(
          MdiIcons.circle,
          color: Colors.green,
        );
      case 'Dead':
        return const Icon(
          MdiIcons.circle,
          color: Colors.red,
        );
      case 'unknown':
        return const Icon(
          MdiIcons.circle,
          color: Colors.grey,
        );
      default:
        return Container();
    }
  }
}
