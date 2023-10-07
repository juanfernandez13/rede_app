import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';
import 'package:rede/models/user_model.dart';
import 'package:rede/pages/editarSobre/card_edificios.dart';
import 'package:rede/repositories/edificio_repository.dart';
import 'package:rede/styles/font_styles.dart';
import 'package:rede/styles/icones_styles.dart';
import 'package:rede/styles/input_styles.dart';

import 'components/edit_horarios.dart';

class EditSobrePage extends StatefulWidget {
  final UserModel user;
  const EditSobrePage({super.key, required this.user});

  @override
  State<EditSobrePage> createState() => _EditSobrePageState();
}

class _EditSobrePageState extends State<EditSobrePage> {
  TextEditingController whatsappController =
      TextEditingController(text: "+55 15 91234-5678");
  TextEditingController localizacaoController =
      TextEditingController(text: "São Jorge 2ª Seção, Belo Horizonte - MG, 30451-102");
  TextEditingController emailController =
      TextEditingController(text: "edificiosul@governomg.com.br");
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
                    "Editar sobre",
                    style: FontStyles.grosso16(),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Salvar",
                      style: TextStyle(
                          color: Cores.azul, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              Espaco.height8(),
              Text(
                "Horário de atendimento",
                style: FontStyles.grosso16(),
              ),
              Espaco.height12(),
              EditHorarios(
                user: widget.user,
              ),
              Espaco.height20(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Edifícios", style: FontStyles.grosso16()),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Cores.azul)),
                    child: Text("Adicionar", style: FontStyles.grosso14()),
                  )
                ],
              ),
              Espaco.height8(),
              const CardEdificioList(),
              Espaco.height20(),
              Text(
                "Localização",
                style: FontStyles.grosso16(),
              ),
              Espaco.height8(),
              TextField(
                controller: localizacaoController,
                decoration:
                    InputDecoration(border: InputStyles.editDadosInput()),
              ),
              Espaco.height20(),
              Text(
                "Whatsapp",
                style: FontStyles.grosso16(),
              ),
              Espaco.height8(),
              TextField(
                controller: whatsappController,
                decoration:
                    InputDecoration(border: InputStyles.editDadosInput()),
              ),
              Espaco.height20(),
              Text(
                "E-mail",
                style: FontStyles.grosso16(),
              ),
              Espaco.height8(),
              TextField(
                controller: emailController,
                decoration:
                    InputDecoration(border: InputStyles.editDadosInput()),
              ),
              Espaco.height20()
            ],
          ),
        ),
      ),
    ));
  }
}

