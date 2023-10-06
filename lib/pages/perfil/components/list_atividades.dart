import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';
import 'package:rede/models/user_model.dart';
import 'package:rede/styles/font_styles.dart';
import 'package:rede/styles/icones_styles.dart';

class ListAtividades extends StatelessWidget {
  ListAtividades({super.key});
  final UserModel user = UserModel();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: user.atividades.length,
      itemBuilder: (_, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(user.user_path),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              user.nome,
                              style: FontStyles.grosso16(),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Icones.seloAmarelo(),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "${user.conta} • ${user.atividades[index].data}",
                              style: FontStyles.finoCinza12(),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: width * 0.75,
                            child: Text(user.atividades[index].texto_atividade),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 28,
                        width: width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.chat_bubble_outline,
                              size: 16,
                              color: Cores.cinzaEscuro,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              user.atividades[index].comentarios.length
                                  .toString(),
                              style: TextStyle(color: Cores.cinzaEscuro),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
