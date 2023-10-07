import 'package:flutter/material.dart';
import 'package:rede/models/user_model.dart';

import '../../../styles/font_styles.dart';

class EditImg extends StatelessWidget {
  final UserModel user;
  const EditImg({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Imagem de perfil",
          style: FontStyles.grosso16(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage(user.fotoPath),
                ),
                const CircleAvatar(
                  radius: 48,
                  backgroundColor: Colors.black54,
                  child: Center(
                    child: Icon(Icons.camera_alt),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
