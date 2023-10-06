import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';
import 'package:rede/models/horariosModel.dart';
import 'package:rede/models/user_model.dart';
import 'package:rede/repositories/edificio_repository.dart';
import 'package:rede/styles/font_styles.dart';
import 'package:rede/styles/icones_styles.dart';

class SobreMenu extends StatefulWidget {
  const SobreMenu({super.key});

  @override
  State<SobreMenu> createState() => _SobreMenuState();
}

class _SobreMenuState extends State<SobreMenu> {
  UserModel user = UserModel();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ButtonEditHorarios(),
          Espaco.height20(),
          Text(
            "Horário de atendimento",
            style: FontStyles.grosso16(),
          ),
          Espaco.height4(),
          ListHorarios(
            user: user,
          ),
          Espaco.height20(),
          Text(
            "Edifícios",
            style: FontStyles.grosso16(),
          ),
          Espaco.height20(),
          CardEdificio(),
        ],
      ),
    );
  }
}

class ButtonEditHorarios extends StatelessWidget {
  const ButtonEditHorarios({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          border: Border.all(color: Cores.azul, width: 1),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        "Editar seção sobre",
        style: FontStyles.grosso16(),
      ),
    );
  }
}

class ListHorarios extends StatelessWidget {
  final UserModel user;
  const ListHorarios({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
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
                        "${hoje.abre.keys}:${hoje.abre.values} às ${hoje.fecha.keys}:${hoje.fecha.values}",
                        style: FontStyles.fino14(),
                      )
                    : Text("Fechado", style: FontStyles.fino14()),
              ],
            );
          }),
    );
  }
}

class CardEdificio extends StatelessWidget {
  const CardEdificio({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(),
        Espaco.width8(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Nome do edificio",
                  style: FontStyles.grosso16(),
                ),
                Espaco.width4(),
                Icones.seloRoxo(),
                Espaco.width8(),
                Text(
                  "@edificio",
                  style: FontStyles.fino14(),
                ),
              ],
            ),
            Text(
              "texto aqui msm",
              style: FontStyles.fino16(),
            )
          ],
        )
      ],
    );
  }
}
