import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';
import 'package:rede/models/edificioModel.dart';
import 'package:rede/models/horariosModel.dart';
import 'package:rede/models/user_model.dart';
import 'package:rede/repositories/edificio_repository.dart';
import 'package:rede/styles/font_styles.dart';
import 'package:rede/styles/icones_styles.dart';

class ListEdificios extends StatelessWidget {
  const ListEdificios({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.25,
      child: ListView.builder(
        itemCount: EdificioRepository.mokados().length,
        itemBuilder: (_, index) {
          EdificioModel edificio = EdificioRepository.mokados()[index];
          return CardEdificio(edificio: edificio);
        },
      ),
    );
  }
}

class CardEdificio extends StatelessWidget {
  final EdificioModel edificio;
  const CardEdificio({super.key, required this.edificio});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(edificio.foto_path),
          ),
          Espaco.width8(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    edificio.nome,
                    style: FontStyles.grosso16(),
                  ),
                  Espaco.width4(),
                  Icones.seloRoxo(),
                  Espaco.width8(),
                  Text(
                    edificio.conta,
                    style: FontStyles.fino14(),
                  ),
                ],
              ),
              Text(
                edificio.bio,
                style: FontStyles.fino16(),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ListHorarios extends StatelessWidget {
  final UserModel user;
  const ListHorarios({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
          itemCount: user.horarios.length,
          itemBuilder: (_, index) {
            Horarios hoje = user.horarios[index];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  hoje.dia,
                  style: FontStyles.fino14(),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Cores.cinza, width: 1))),
                  ),
                ),
                user.horarios[index].funciona
                    ? Text(
                        "${hoje.abrirHorario}:00 às ${hoje.fecharHorario}:00",
                        style: FontStyles.fino14(),
                      )
                    : Text("Fechado", style: FontStyles.fino14()),
              ],
            );
          }),
    );
  }
}