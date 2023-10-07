import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';
import 'package:rede/models/user_model.dart';
import 'package:rede/styles/font_styles.dart';
import 'package:rede/styles/input_styles.dart';

import 'components/edit_img.dart';

class EditarPerfil extends StatefulWidget {
  final UserModel user;
  const EditarPerfil({super.key, required this.user});

  @override
  State<EditarPerfil> createState() => _EditarPerfilState();
}

class _EditarPerfilState extends State<EditarPerfil> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController localizacaoController = TextEditingController();
  TextEditingController administradorController = TextEditingController();

  void salvar() {
    setState(() {
      widget.user.nome = nomeController.text;
      widget.user.bio = bioController.text;
      widget.user.localizacao = localizacaoController.text;
      widget.user.administrador = administradorController.text;
    });
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    nomeController.text = widget.user.nome;
    bioController.text = widget.user.bio;
    localizacaoController.text = widget.user.localizacao;
    administradorController.text = widget.user.administrador;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Cores.azul,
                    )),
                Text(
                  "Editar perfil",
                  style: FontStyles.grosso16(),
                ),
                TextButton(
                  onPressed: () => salvar(),
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                        color: Cores.azul, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EditImg(
                    user: widget.user,
                  ),
                  label("Nome"),
                  TextField(
                    controller: nomeController,
                    decoration:
                        InputDecoration(border: InputStyles.editDadosInput()),
                  ),
                  label("Bio"),
                  TextField(
                    controller: bioController,
                    decoration:
                        InputDecoration(border: InputStyles.editDadosInput()),
                  ),
                  label("localização"),
                  TextField(
                    controller: localizacaoController,
                    decoration:
                        InputDecoration(border: InputStyles.editDadosInput()),
                  ),
                  label("Administrador Geral"),
                  TextField(
                    controller: administradorController,
                    decoration:
                        InputDecoration(border: InputStyles.editDadosInput()),
                  ),
                  Espaco.height20(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Moderadores",
                        style: FontStyles.grosso16(),
                      ),
                      InkWell(
                        onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext bc) {
                              TextEditingController moderadorController =
                                  TextEditingController();
                              return AlertDialog(
                                title: Center(
                                    child: Text(
                                  "Cadastrar moderador",
                                  style: FontStyles.grosso16(),
                                )),
                                content: Wrap(
                                  children: [
                                    TextField(
                                      controller: moderadorController,
                                    )
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                      style: const ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                                      ),
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text("Desistir", style: TextStyle(color: Colors.white),)),
                                  TextButton(
                                      onPressed: () {
                                        widget.user.moderadores
                                            .add(moderadorController.text);
                                        setState(() {
                                          
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Cadastrar")),
                                ],
                              );
                            }),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            border: Border.all(color: Cores.azul, width: 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "Adicionar",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          ),
                        ),
                      )
                    ],
                  ),
                  Espaco.height8(),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: widget.user.moderadores.length,
                        itemBuilder: (_, index) {
                          TextEditingController moderadorIndex =
                              TextEditingController(
                                  text: widget.user.moderadores[index]);
                          return Column(
                            children: [
                              Espaco.height8(),
                              TextField(
                                controller: moderadorIndex,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          widget.user.moderadores.removeWhere(
                                              (element) =>
                                                  element ==
                                                  moderadorIndex.text);
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.close_sharp,
                                        color: Colors.red,
                                      ),
                                    ),
                                    border: InputStyles.editDadosInput()),
                              ),
                              Espaco.height8(),
                            ],
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    )));
  }
}

Widget label(String campo) {
  return Column(
    children: [
      Espaco.height20(),
      Text(
        campo,
        style: FontStyles.grosso16(),
      ),
      Espaco.height8(),
    ],
  );
}

Widget labelModerador(String campo) {
  return Column(
    children: [
      Espaco.height20(),
      Text(
        campo,
        style: FontStyles.grosso16(),
      ),
      Espaco.height8(),
    ],
  );
}
