import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';
import 'package:rede/models/edificioModel.dart';
import 'package:rede/models/horariosModel.dart';
import 'package:rede/models/user_model.dart';
import 'package:rede/pages/editarSobre/edit_sobre_page.dart';
import 'package:rede/pages/perfil/components/pageview/sobre_components.dart';
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
    return SingleChildScrollView(
      child: Container(
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
            Espaco.height8(),
            ListHorarios(
              user: user,
            ),
            Espaco.height16(),
            Text(
              "Edifícios",
              style: FontStyles.grosso16(),
            ),
            Espaco.height8(),
            const ListEdificios(),
            Espaco.height16(),
            Text(
              "Localização",
              style: FontStyles.grosso16(),
            ),
            Espaco.height8(),
            RowInfo(Icons.location_pin,
                "São Jorge 2ª Seção, Belo Horizonte - MG, 30451-102"),
            Text(
              "Contato",
              style: FontStyles.grosso16(),
            ),
            Espaco.height8(),
            Row(
              children: [
                Image.network(
                  "https://icones.pro/wp-content/uploads/2021/02/icone-du-logo-whatsapp-violet.png",
                  height: 16,
                ),
                Espaco.width8(),
                Text(
                  "+55 15 91234-5678",
                  style: FontStyles.fino14(),
                )
              ],
            ),
            Espaco.height8(),
            RowInfo(Icons.email, "edificiosul@governomg.com.br"),
          ],
        ),
      ),
    );
  }
}

Widget RowInfo(IconData icone, String info) {
  return Row(
    children: [
      Icon(
        icone,
        color: Cores.roxo,
        size: 16,
      ),
      Espaco.width8(),
      Text(
        info,
        style: FontStyles.fino14(),
      )
    ],
  );
}

class ButtonEditHorarios extends StatelessWidget {
  const ButtonEditHorarios({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => EditSobrePage())),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            border: Border.all(color: Cores.azul, width: 1),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          "Editar seção sobre",
          style: FontStyles.grosso16(),
        ),
      ),
    );
  }
}
