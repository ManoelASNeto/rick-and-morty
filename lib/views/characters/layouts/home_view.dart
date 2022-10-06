import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rick_and_morty_mobx/views/characters/widgets/custom_button.dart';

import '../../../controllers/characters/characters_controller.dart';
import '../../../injection_container.dart';
import '../widgets/custom_inkwell.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _charactersController = getIt.get<CharactersController>();

  @override
  void initState() {
    _charactersController.getChar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Observer(
        builder: (_) {
          final currentState = _charactersController.currentState;

          switch (currentState) {
            case CharactersStatus.initial:
            case CharactersStatus.loading:
              return _load();
            case CharactersStatus.ready:
              return _person();
          }
        },
      ),
    );
  }

  Widget _person() {
    var char = _charactersController.response;
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.jpeg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Observer(
                builder: (_) => GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: char?.results?.length,
                  itemBuilder: (_, index) {
                    final list = char?.results?[index];
                    return CustomInkwell(
                      image: list?.image ??
                          'https://triunfo.pe.gov.br/pm_tr430/wp-content/uploads/2018/03/sem-foto.jpg',
                      name: list?.name ?? 'Sem nome',
                      id: list?.id ?? 0,
                      onTap: () {},
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: char?.info?.prev != null,
                      child: CustomButton(
                        iconMDI:
                            const Icon(MdiIcons.arrowLeftBoldCircleOutline),
                        onTap: () {
                          _charactersController.prevPage(char?.info?.prev);
                          _charactersController.decrement();
                        },
                        text: 'Anterior',
                      ),
                    ),
                    Text(
                      '${_charactersController.page} | ${char?.info?.pages}',
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    CustomButton(
                      iconMDI: const Icon(MdiIcons.arrowRightBoldCircleOutline),
                      onTap: () {
                        _charactersController.nextPage(char?.info?.next);
                        _charactersController.increment();
                      },
                      text: 'Proximo',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _load() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.black,
      child: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: MediaQuery.of(context).size.width,
          height: 100,
        ),
      ),
    );
  }
}
