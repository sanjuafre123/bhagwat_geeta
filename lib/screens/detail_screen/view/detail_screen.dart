// class DetailScreen extends StatelessWidget {
//   const DetailScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var homeScreenProviderFalse =
//         Provider.of<HomeScreenProvider>(context, listen: false);
//     var homeScreenProvideTrue =
//         Provider.of<HomeScreenProvider>(context, listen: true);
//     var detailScreenProviderTrue =
//         Provider.of<DetailScreenProvider>(context, listen: true);
//     var detailScreenProviderFalse =
//         Provider.of<DetailScreenProvider>(context, listen: false);
//     var gitaProvider = Provider.of<GeetaProvider>(context);
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.amber[600],
//         scrolledUnderElevation: 0.1,
//         centerTitle: true,
//         leading: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: const Icon(
//             Icons.arrow_back,
//             size: 30,
//           ),
//         ),
//         title: Text(
//           (detailScreenProviderTrue.selectedLanguage == 'Sanskrit')
//               ? gitaProvider.geetaModalList[selectedIndex].chapterName.sanskrit
//               : (detailScreenProviderTrue.selectedLanguage == 'Hindi')
//                   ? gitaProvider.geetaModalList[selectedIndex].chapterName.hindi
//                   : (detailScreenProviderTrue.selectedLanguage == 'English')
//                       ? gitaProvider
//                           .geetaModalList[selectedIndex].chapterName.english
//                       : gitaProvider
//                           .geetaModalList[selectedIndex].chapterName.gujarati,
//         ),
//         actions: [
//           DropdownButton(
//             value: detailScreenProviderTrue.selectedLanguage,
//             onChanged: (String? value) {
//               detailScreenProviderFalse.languageTranslate(value!);
//             },
//             items: <String>['Sanskrit', 'Hindi', 'English', 'Gujarati']
//                 .map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             image: AssetImage(imageListOfChapters[selectedIndex]),
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 ...List.generate(
//                   verses.length,
//                   (index) => shloksContainer(
//                     height: height,
//                     width: width,
//                     gitaProvider: gitaProvider,
//                     index: index,
//                     homeScreenProviderTrue: homeScreenProvideTrue,
//                     context: context,
//                     detailScreenProviderTrue: detailScreenProviderTrue,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Container shloksContainer({
//     required double height,
//     required double width,
//     required GeetaProvider gitaProvider,
//     required int index,
//     required HomeScreenProvider homeScreenProviderTrue,
//     required context,
//     required DetailScreenProvider detailScreenProviderTrue,
//   }) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 10),
//       padding: const EdgeInsets.all(10),
//       alignment: Alignment.center,
//       width: width,
//       decoration: BoxDecoration(
//         color: Colors.black,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SelectableText(
//             (detailScreenProviderTrue.selectedLanguage == 'Sanskrit')
//                 ? gitaProvider.geetaModalList[selectedIndex].verses[index]
//                     .language.sanskrit
//                 : (detailScreenProviderTrue.selectedLanguage == 'Hindi')
//                     ? gitaProvider.geetaModalList[selectedIndex].verses[index]
//                         .language.hindi
//                     : (detailScreenProviderTrue.selectedLanguage == 'English')
//                         ? gitaProvider.geetaModalList[selectedIndex]
//                             .verses[index].language.english
//                         : gitaProvider.geetaModalList[selectedIndex]
//                             .verses[index].language.gujarati,
//             style: const TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//             cursorColor: Colors.blue,
//           ),
//           SizedBox(
//             height: height * 0.01,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   Random random = Random();
//                   int x = random.nextInt(imageList.length);
//                   showDialog(
//                     context: context,
//                     builder: (context) => Dialog.fullscreen(
//                       backgroundColor: Colors.black,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Expanded(
//                             child: RepaintBoundary(
//                               key: repaintKey,
//                               child: Container(
//                                 padding: const EdgeInsets.all(15.0),
//                                 alignment: Alignment.center,
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     fit: BoxFit.cover,
//                                     image: AssetImage(imageList[x]),
//                                   ),
//                                 ),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       (detailScreenProviderTrue
//                                                   .selectedLanguage ==
//                                               'Sanskrit')
//                                           ? gitaProvider
//                                               .geetaModalList[selectedIndex]
//                                               .chapterName
//                                               .sanskrit
//                                           : (detailScreenProviderTrue
//                                                       .selectedLanguage ==
//                                                   'Hindi')
//                                               ? gitaProvider
//                                                   .geetaModalList[selectedIndex]
//                                                   .chapterName
//                                                   .hindi
//                                               : (detailScreenProviderTrue
//                                                           .selectedLanguage ==
//                                                       'English')
//                                                   ? gitaProvider
//                                                       .geetaModalList[
//                                                           selectedIndex]
//                                                       .chapterName
//                                                       .english
//                                                   : gitaProvider
//                                                       .geetaModalList[
//                                                           selectedIndex]
//                                                       .chapterName
//                                                       .gujarati,
//                                       style: const TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 28,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       height: height * 0.03,
//                                     ),
//                                     Text(
//                                       (detailScreenProviderTrue
//                                                   .selectedLanguage ==
//                                               'Sanskrit')
//                                           ? gitaProvider
//                                               .geetaModalList[selectedIndex]
//                                               .verses[index]
//                                               .language
//                                               .sanskrit
//                                           : (detailScreenProviderTrue
//                                                       .selectedLanguage ==
//                                                   'Hindi')
//                                               ? gitaProvider
//                                                   .geetaModalList[selectedIndex]
//                                                   .verses[index]
//                                                   .language
//                                                   .hindi
//                                               : (detailScreenProviderTrue
//                                                           .selectedLanguage ==
//                                                       'English')
//                                                   ? gitaProvider
//                                                       .geetaModalList[
//                                                           selectedIndex]
//                                                       .verses[index]
//                                                       .language
//                                                       .english
//                                                   : gitaProvider
//                                                       .geetaModalList[
//                                                           selectedIndex]
//                                                       .verses[index]
//                                                       .language
//                                                       .gujarati,
//                                       style: const TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 28,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               IconButton(
//                                 onPressed: () async {
//                                   RenderRepaintBoundary boundary = repaintKey
//                                           .currentContext!
//                                           .findRenderObject()
//                                       as RenderRepaintBoundary;
//
//                                   ui.Image image = await boundary.toImage();
//                                   ByteData? byteData = await image.toByteData(
//                                       format: ui.ImageByteFormat.png);
//
//                                   Uint8List img =
//                                       byteData!.buffer.asUint8List();
//
//                                   final imgPath =
//                                       await getApplicationDocumentsDirectory();
//                                   final file = File("${imgPath.path}/img.png");
//
//                                   file.writeAsBytes(img);
//                                   ShareExtend.share(file.path, 'image');
//                                 },
//                                 icon: const Icon(
//                                   Icons.share,
//                                   color: Colors.white,
//                                   size: 30,
//                                 ),
//                               ),
//                               IconButton(
//                                 onPressed: () async {
//                                   RenderRepaintBoundary boundary = repaintKey
//                                           .currentContext!
//                                           .findRenderObject()
//                                       as RenderRepaintBoundary;
//
//                                   ui.Image image = await boundary.toImage();
//
//                                   ByteData? byteData = await image.toByteData(
//                                       format: ui.ImageByteFormat.png);
//
//                                   Uint8List img =
//                                       byteData!.buffer.asUint8List();
//
//                                   ScaffoldMessenger.of(context).showSnackBar(
//                                     const SnackBar(
//                                       behavior: SnackBarBehavior.floating,
//                                       margin: EdgeInsets.all(10),
//                                       content: Text('Saved to the gallery!'),
//                                     ),
//                                   );
//
//                                   ImageGallerySaver.saveImage(img);
//                                 },
//                                 icon: const Icon(
//                                   Icons.save_alt,
//                                   color: Colors.white,
//                                   size: 30,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//                 icon: const Icon(
//                   Icons.share,
//                   color: Colors.white,
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {
//                   FlutterClipboard.copy(
//                     (detailScreenProviderTrue.selectedLanguage == 'Sanskrit')
//                         ? gitaProvider.geetaModalList[selectedIndex]
//                             .verses[index].language.sanskrit
//                         : (detailScreenProviderTrue.selectedLanguage == 'Hindi')
//                             ? gitaProvider.geetaModalList[selectedIndex]
//                                 .verses[index].language.hindi
//                             : (detailScreenProviderTrue.selectedLanguage ==
//                                     'English')
//                                 ? gitaProvider.geetaModalList[selectedIndex]
//                                     .verses[index].language.english
//                                 : gitaProvider.geetaModalList[selectedIndex]
//                                     .verses[index].language.gujarati,
//                   );
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(
//                       behavior: SnackBarBehavior.floating,
//                       margin: EdgeInsets.all(10),
//                       content: Text('Copied to clipboard'),
//                     ),
//                   );
//                 },
//                 icon: const Icon(
//                   Icons.copy,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:ui' as ui;
import 'package:bhagwat_gita/provider/shloks_provider.dart';
import 'package:bhagwat_gita/utils/global.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:share_extend/share_extend.dart';
import '../../home_screen/provider/home_screen_provider.dart';
import '../provider/detail_screen_provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var detailScreenProviderTrue =
        Provider.of<DetailScreenProvider>(context, listen: true);
    var detailScreenProviderFalse =
        Provider.of<DetailScreenProvider>(context, listen: false);
    var homeScreenProviderFalse =
        Provider.of<HomeScreenProvider>(context, listen: false);
    var homeScreenProvideTrue =
        Provider.of<HomeScreenProvider>(context, listen: true);
    var gitaProvider = Provider.of<GeetaProvider>(context);

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        centerTitle: true,
        title: Text(
          (detailScreenProviderTrue.selectedLanguage == 'Sanskrit')
              ? gitaProvider.geetaModalList[selectedIndex].chapterName.sanskrit
              : (detailScreenProviderTrue.selectedLanguage == 'Hindi')
                  ? gitaProvider.geetaModalList[selectedIndex].chapterName.hindi
                  : (detailScreenProviderTrue.selectedLanguage == 'English')
                      ? gitaProvider
                          .geetaModalList[selectedIndex].chapterName.english
                      : gitaProvider
                          .geetaModalList[selectedIndex].chapterName.gujarati,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        actions: [
          DropdownButton(
            value: detailScreenProviderTrue.selectedLanguage,
            onChanged: (String? value) {
              detailScreenProviderFalse.languageTranslate(value!);
            },
            items: <String>[
              'Sanskrit',
              'Hindi',
              'English',
              'Gujarati',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              ChaptersImgList[selectedIndex],
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...List.generate(
                  verses.length,
                  (index) => buildshloks(
                    height: height,
                    width: width,
                    gitaProvider: gitaProvider,
                    index: index,
                    homeScreenProviderTrue: homeScreenProvideTrue,
                    context: context,
                    detailScreenProviderTrue: detailScreenProviderTrue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildshloks({
    required double width,
    required double height,
    required int index,
    required BuildContext context,
    required GeetaProvider gitaProvider,
    required DetailScreenProvider detailScreenProviderTrue,
    required HomeScreenProvider homeScreenProviderTrue,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      alignment: Alignment.center,
      width: width,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            (detailScreenProviderTrue.selectedLanguage == 'Sanskrit')
                ? gitaProvider.geetaModalList[selectedIndex].verses[index]
                    .language.sanskrit
                : (detailScreenProviderTrue.selectedLanguage == 'Hindi')
                    ? gitaProvider.geetaModalList[selectedIndex].verses[index]
                        .language.hindi
                    : (detailScreenProviderTrue.selectedLanguage == 'English')
                        ? gitaProvider.geetaModalList[selectedIndex]
                            .verses[index].language.english
                        : gitaProvider.geetaModalList[selectedIndex]
                            .verses[index].language.gujarati,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            cursorColor: Colors.blue,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Random random = Random();
                  int x = random.nextInt(imageList.length);
                  showDialog(
                    context: context,
                    builder: (context) => Dialog.fullscreen(
                      backgroundColor: Colors.black54,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: RepaintBoundary(
                              key: repaintKey,
                              child: Container(
                                padding: EdgeInsets.all(15),
                                alignment: Alignment.center,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(imageList[x]),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      (detailScreenProviderTrue
                                                  .selectedLanguage ==
                                              'Sanskrit')
                                          ? gitaProvider
                                              .geetaModalList[selectedIndex]
                                              .chapterName
                                              .sanskrit
                                          : (detailScreenProviderTrue
                                                      .selectedLanguage ==
                                                  'Hindi')
                                              ? gitaProvider
                                                  .geetaModalList[selectedIndex]
                                                  .chapterName
                                                  .hindi
                                              : (detailScreenProviderTrue
                                                          .selectedLanguage ==
                                                      'English')
                                                  ? gitaProvider
                                                      .geetaModalList[
                                                          selectedIndex]
                                                      .chapterName
                                                      .english
                                                  : gitaProvider
                                                      .geetaModalList[
                                                          selectedIndex]
                                                      .chapterName
                                                      .gujarati,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.04,
                                    ),
                                    Text(
                                      (detailScreenProviderTrue
                                                  .selectedLanguage ==
                                              'Sanskrit')
                                          ? gitaProvider
                                              .geetaModalList[selectedIndex]
                                              .verses[index]
                                              .language
                                              .sanskrit
                                          : (detailScreenProviderTrue
                                                      .selectedLanguage ==
                                                  'Hindi')
                                              ? gitaProvider
                                                  .geetaModalList[selectedIndex]
                                                  .verses[index]
                                                  .language
                                                  .hindi
                                              : (detailScreenProviderTrue
                                                          .selectedLanguage ==
                                                      'English')
                                                  ? gitaProvider
                                                      .geetaModalList[
                                                          selectedIndex]
                                                      .verses[index]
                                                      .language
                                                      .english
                                                  : gitaProvider
                                                      .geetaModalList[
                                                          selectedIndex]
                                                      .verses[index]
                                                      .language
                                                      .gujarati,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () async {
                                  RenderRepaintBoundary boundary = repaintKey
                                          .currentContext!
                                          .findRenderObject()
                                      as RenderRepaintBoundary;
                                  ui.Image image = await boundary.toImage();
                                  ByteData? byteData = (await image.toByteData(
                                      format: ui.ImageByteFormat.png));
                                  Uint8List img =
                                      byteData!.buffer.asUint8List();

                                  final imgPath =
                                      await getApplicationDocumentsDirectory();
                                  final file = File("${imgPath.path}/img.png");
                                  file.writeAsBytes(img as List<int>);
                                  ShareExtend.share(file.path, 'image');
                                },
                                icon: const Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              IconButton(
                                onPressed: () async {
                                  RenderRepaintBoundary boundary = repaintKey
                                          .currentContext!
                                          .findRenderObject()
                                      as RenderRepaintBoundary;
                                  ui.Image image = await boundary.toImage();
                                  ByteData? byteData = (await image.toByteData(
                                      format: ui.ImageByteFormat.png));
                                  Uint8List img =
                                      byteData!.buffer.asUint8List();

                                  final imgPath =
                                      await getApplicationDocumentsDirectory();
                                  final file = File("${imgPath.path}/img.png");
                                  file.writeAsBytes(img as List<int>);
                                  ShareExtend.share(file.path, 'image');
                                },
                                icon: const Icon(
                                  Icons.save,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  FlutterClipboard.copy(
                    (detailScreenProviderTrue.selectedLanguage == 'Sanskrit')
                        ? gitaProvider.geetaModalList[selectedIndex]
                            .verses[index].language.sanskrit
                        : (detailScreenProviderTrue.selectedLanguage == 'Hindi')
                            ? gitaProvider.geetaModalList[selectedIndex]
                                .verses[index].language.hindi
                            : (detailScreenProviderTrue.selectedLanguage ==
                                    'English')
                                ? gitaProvider.geetaModalList[selectedIndex]
                                    .verses[index].language.english
                                : gitaProvider.geetaModalList[selectedIndex]
                                    .verses[index].language.gujarati,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.all(10),
                      content: Text('Copied to Clipboard'),
                    ),
                  );
                },
                icon: Icon(
                  Icons.copy,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
