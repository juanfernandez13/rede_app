
import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';
import 'package:rede/repositories/edificio_repository.dart';
import 'package:rede/styles/font_styles.dart';
import 'package:rede/styles/icones_styles.dart';
import 'package:rede/styles/input_styles.dart';

class CardEdificioList extends StatefulWidget {
  const CardEdificioList({super.key});

  @override
  State<CardEdificioList> createState() => _CardEdificioListState();
}

class _CardEdificioListState extends State<CardEdificioList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: EdificioRepository.mokados().map((edificio) {
        TextEditingController admController =
            TextEditingController(text: edificio.adm);
        return Container(
          margin: const EdgeInsets.only(top: 16),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(edificio.foto_path),
              ),
              Espaco.width16(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Text(
                          edificio.nome,
                          style: FontStyles.grosso16(),
                        ),
                        Espaco.width4(),
                        Icones.seloRoxo(),
                        Icones.icone(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                  Espaco.height4(),
                  Row(
                    children: [
                      Text(
                        "Administrador",
                        style: FontStyles.grosso16(),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      SizedBox(
                        width: 150,
                        child: TextField(
                          controller: admController,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              border: InputStyles.editDadosInput(),
                              suffixIcon: Icones.icone(Icons.edit)),
                        ),
                      )
                    ],
                  ),
                  const Divider()
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}