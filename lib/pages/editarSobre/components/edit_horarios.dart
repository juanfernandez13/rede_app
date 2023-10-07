import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';
import 'package:rede/models/user_model.dart';
import 'package:rede/styles/font_styles.dart';

class EditHorarios extends StatefulWidget {
  final UserModel user;
  const EditHorarios({super.key, required this.user});

  @override
  State<EditHorarios> createState() => _EditHorariosState();
}
class _EditHorariosState extends State<EditHorarios> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
        children: widget.user.horarios
            .map((hoje) => Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      width: width * 0.4,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Cores.cinza)),
                      child: Text(hoje.dia, style: FontStyles.fino16()),
                    ),
                    hoje.funciona?
                    Row(
                      children: [
                        Container(
                      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                      width: width * 0.15,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Cores.cinza)),
                      child: Text(hoje.abrirHorario, style: FontStyles.fino16()),
                    ),
                    const Text("Às"),
                        Container(
                      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                      width: width * 0.15,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Cores.cinza)),
                      child: Text(hoje.abrirHorario, style: FontStyles.fino16()),
                    ),

                      ],
                    ) : Container(
                      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                      width: width * 0.4,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Cores.cinza)),
                      child: Text("Fechado", style: FontStyles.fino16()),
                    ),
                  ],
                ))
            .toList());
  }
}