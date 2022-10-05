import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../controllers/characters/characters_controller.dart';
import '../../../injection_conatiner.dart';
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

  /* Future<void> getChar() async {
    
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
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
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Observer(
                  builder: (_) => GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemCount: _charactersController.response?.results?.length,
                    itemBuilder: (_, index) {
                      final list = _charactersController.response
                          ?.results?[index]; //controller.response.[index];
                      return CustomInkwell(
                        image: list?.name ??
                            ''
                                'https://triunfo.pe.gov.br/pm_tr430/wp-content/uploads/2018/03/sem-foto.jpg',
                        name: list?.name ?? 'Sem nome',
                        id: list?.id ?? 0,
                        onTap: () {},
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          // controller.prevPage(controller.data?.info?.prev);
                        },
                        child: const Text(
                          'Anterior',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //controller.nextPage(controller.data?.info?.next);
                        },
                        child: const Text(
                          'Proxima',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
