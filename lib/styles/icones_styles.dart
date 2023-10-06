import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';

class Icones {
  static Icon iconBio(IconData icone) => Icon(
        icone,
        size: 15,
        color: Cores.cinza,
      );
  static seloPequeno() => SizedBox(
        height: 16,
        child: Image.network(
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTmGPKl-dNBKlXvBMWgZ2lIC599zbaYp4rD0P9LOQnnb7cUxvZa"),
      );
}
