import 'package:flutter/material.dart';
import 'package:rede/constants/constantes.dart';
import 'package:rede/pages/perfil/components/list_atividades.dart';
import 'package:rede/styles/font_styles.dart';
import 'package:rede/pages/perfil/components/user_dados.dart';
import 'components/bottom_navigator.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  PageController pageController = PageController();
  int pageIndex = 0;
  void trocarPageView(int page) {
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    pageIndex = page;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          UserDados(),
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Cores.azul, width: 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => trocarPageView(0),
                  child: Text(
                    "Atividades",
                    style: FontStyles.pageViewController(pageIndex == 0),
                  ),
                ),
                InkWell(
                  onTap: () => trocarPageView(1),
                  child: Text(
                    "Sobre",
                    style: FontStyles.pageViewController(pageIndex == 1),
                  ),
                ),
                InkWell(
                  onTap: () => trocarPageView(2),
                  child: Text(
                    "Avisos e comunidades",
                    style: FontStyles.pageViewController(pageIndex == 2),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: PageView(
            onPageChanged: (value) => setState(() => pageIndex = value),
            controller: pageController,
            children: [
              Container(
                child: ListAtividades(),
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.black,
              )
            ],
          )),
          const BottomNavigator()
        ],
      ),
    ));
  }
}
