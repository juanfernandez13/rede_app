import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';
import 'package:rede/styles/font_styles.dart';

class EditSobrePage extends StatefulWidget {
  const EditSobrePage({super.key});

  @override
  State<EditSobrePage> createState() => _EditSobrePageState();
}

class _EditSobrePageState extends State<EditSobrePage> {
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
              Text("Horário de atendimento", style: FontStyles.grosso16(),)
            ],
          ),
        ),
      ),
    ));
  }
}
class EditHorarios extends StatefulWidget {
  const EditHorarios({super.key});

  @override
  State<EditHorarios> createState() => _EditHorariosState();
}

class _EditHorariosState extends State<EditHorarios> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
      ],
    );
  }
}