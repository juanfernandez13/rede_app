import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';
import 'package:rede/models/user_model.dart';
import 'package:rede/pages/editarPerfil/editar_perfil_page.dart';
import 'package:rede/styles/font_styles.dart';
import 'package:rede/styles/icones_styles.dart';

class UserDados extends StatefulWidget {
  const UserDados({super.key});

  @override
  State<UserDados> createState() => _UserDadosState();
}

class _UserDadosState extends State<UserDados> {
  UserModel user = UserModel();
  @override
  Widget build(BuildContext context) {
    var heightSize = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 0.36 * heightSize,
      child: Stack(
        children: [
          CapaPerfil(
            user: user,
            heightCapa: heightSize * 0.18,
          ),
          PerfilFoto(user: user, height: heightSize * 0.36),
          DadosPerfil(user: user)
        ],
      ),
    );
  }
}

class CapaPerfil extends StatelessWidget {
  final UserModel user;
  final heightCapa;
  const CapaPerfil({super.key, required this.user, required this.heightCapa});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightCapa,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(user.capa_path), fit: BoxFit.cover)),
    );
  }
}

class PerfilFoto extends StatelessWidget {
  final UserModel user;
  final height;
  const PerfilFoto({super.key, required this.user, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(user.user_path), fit: BoxFit.cover),
                  border: Border.all(color: Colors.white, width: 4)),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => EditarPerfil(
                            user: user,
                          ))),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: Cores.azul, width: 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Editar dados",
                  style: FontStyles.grosso16(),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class DadosPerfil extends StatelessWidget {
  final UserModel user;
  const DadosPerfil({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 200,
          ),
          Text(
            user.nome,
            style: FontStyles.grosso16(),
          ),
          Espaco.height4(),
          Text(
            user.bio,
            style: FontStyles.fino16(),
          ),
          Espaco.height16(),
          Row(
            children: [
              Icones.iconBio(Icons.location_pin),
              const SizedBox(width: 4),
              Text(
                user.localizacao,
                style: FontStyles.finoCinza12(),
              ),
              const SizedBox(width: 12),
              Icones.iconBio(Icons.calendar_month),
              const SizedBox(width: 4),
              Text(
                "Entrou em ${user.dataPrimeiroAcesso}",
                style: FontStyles.finoCinza12(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
