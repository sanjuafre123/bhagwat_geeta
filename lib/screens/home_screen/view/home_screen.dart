import 'dart:ui';

import 'package:bhagwat_gita/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../provider/shloks_provider.dart';
import '../../detail_screen/provider/detail_screen_provider.dart';
import '../provider/home_screen_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenProvider homeScreenProviderFalse =
        Provider.of<HomeScreenProvider>(context, listen: false);
    HomeScreenProvider homeScreenProviderTrue =
        Provider.of<HomeScreenProvider>(context, listen: true);

    var geetaProvider = Provider.of<GeetaProvider>(context);

    DetailScreenProvider detailScreenProviderTrue =
        Provider.of<DetailScreenProvider>(context, listen: true);
    DetailScreenProvider detailScreenProviderFalse =
        Provider.of<DetailScreenProvider>(context, listen: false);

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        centerTitle: true,
        title: Text(
          (detailScreenProviderTrue.selectedLanguage == 'Sanskrit')
              ? translate[0]
              : (detailScreenProviderTrue.selectedLanguage == 'Hindi')
                  ? translate[1]
                  : (detailScreenProviderTrue.selectedLanguage == 'English')
                      ? translate[2]
                      : translate[3],
        ),
        actions: [
          DropdownButton(
            value: detailScreenProviderTrue.selectedLanguage,
            onChanged: (value) {
              detailScreenProviderFalse.languageTranslate(value!);
            },
            items: <String>['Sanskrit', 'Hindi', 'English', 'Gujarati']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/10.jpeg'),
          ),
        ),
        child: SingleChildScrollView(
          child: Consumer<GeetaProvider>(
            builder: (context, value, child) => Column(
              children: [
                ...List.generate(
                  geetaProvider.geetaModalList.length,
                  (index) => GestureDetector(
                    onTap: () {
                      selectedIndex = index;
                      verses =
                          geetaProvider.geetaModalList[selectedIndex].verses;
                      Navigator.of(context).pushNamed('/Detail');
                    },
                    child: AdhyayContainer(
                      height: height,
                      width: width,
                      gitaProvider: geetaProvider,
                      index: index,
                      homeScreenProviderTrue: homeScreenProviderTrue,
                      detailScreenProviderTrue: detailScreenProviderTrue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container AdhyayContainer(
      {required double height,
      required double width,
      required GeetaProvider gitaProvider,
      required int index,
      required HomeScreenProvider homeScreenProviderTrue,
      required DetailScreenProvider detailScreenProviderTrue}) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(23),
      height: height * 0.11,
      width: width * 0.95,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        (detailScreenProviderTrue.selectedLanguage == 'Sanskrit')
            ? gitaProvider.geetaModalList[index].chapterName.sanskrit
            : (detailScreenProviderTrue.selectedLanguage == 'Hindi')
                ? gitaProvider.geetaModalList[index].chapterName.hindi
                : (detailScreenProviderTrue.selectedLanguage == 'English')
                    ? gitaProvider.geetaModalList[index].chapterName.english
                    : gitaProvider.geetaModalList[index].chapterName.gujarati,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
    );
  }
}
