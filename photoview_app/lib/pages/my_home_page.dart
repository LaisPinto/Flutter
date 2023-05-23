import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:share_plus/share_plus.dart';

import '../core/component/_export_component.dart';
import '../core/component/photo_view_component.dart';

class MyHomePage extends StatefulWidget {

  final String title;
  
  const MyHomePage({super.key, required this.title                                                                                    });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isChecked = false;
  String imageUrl = 'https://statics-marketplace.plataforma.grupoa.education/sagah/908ae4e5-e4ee-45bb-a8e4-61a3e52822f8/b10ecd27-0284-4a99-9615-930dc785fe07.png';
  //late PhotoViewScaleStateController scaleStateController;

  AppBar _columnAppBar() => AppBar(
    actionsIconTheme: const IconThemeData(color: Colors.white),
    leading: const Icon(Icons.arrow_back, color: Colors.white),
    title: Text(widget.title, style: const TextStyle(color: Colors.white)),
    actions: [
      const Icon(Icons.print),
      _columnPadding(),
      const Icon(Icons.menu)
    ],
    backgroundColor: const Color(0xff2c3b48),
  );

  BottomAppBar _columnBottomAppBar() => BottomAppBar(
    color: const Color(0xff2c3b48),
    padding: EdgeInsets.zero,
    child: Container(
      height: 60.0,
      color: const Color(0xff2c3b48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.arrow_back, color: Colors.white,), label: const Text('Aterior', style: TextStyle(color: Colors.white))),
          FilledButton.icon(onPressed: (){},label: const Icon(Icons.arrow_forward, color: Colors.white,), icon: const Text('Próximo', style: TextStyle(color: Colors.white)))
        ],
      ),
    ),
  );

  Padding _columnPadding() => const Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Icon(Icons.dark_mode_outlined),
  );

  TextComponent _columnText() =>  const TextComponent(
    data: "Infografico",
    fontWeight:  FontWeight.bold
  );

  TextComponent _columnText2() => const TextComponent(
    data: 'Infografico',
   fontWeight: FontWeight.bold,
  );

  TextNewComponent _columnText3() => const TextNewComponent(
    data: 'Os infográficos explodiram em popularidade em praticamente todas as indústrias. O que é um infográfico ? Do marketing digital às escolas e salas de aula, os infográficos estão sendo usados em todos os lugares para comunicar informações complexas de uma forma visualmente atraente e dinâmica.'
  );

  LinearProgessIndicatorComponent _rowProgress() => const LinearProgessIndicatorComponent(
          progressPercentage: 09.0
  );

  Center _columnCenter() => Center(
    child: _columnContainer(),
  );

  Container _columnContainer() => Container(
    height: 400,
    color: Colors.white,
    width: double.infinity,
    child: _columnPhotoView(),
  );

  Container _columnContainer2() => Container(
    width: 300.0,
    height: 300.0,
    child: Image.network('https://statics-marketplace.plataforma.grupoa.education/sagah/908ae4e5-e4ee-45bb-a8e4-61a3e52822f8/b10ecd27-0284-4a99-9615-930dc785fe07.png'),
  );

  PhotoViewComponent _columnPhotoView() => PhotoViewComponent(
    imageProvider: const NetworkImage('https://statics-marketplace.plataforma.grupoa.education/sagah/908ae4e5-e4ee-45bb-a8e4-61a3e52822f8/b10ecd27-0284-4a99-9615-930dc785fe07.png'),
    backgroundDecoration: const BoxDecoration(color: Colors.white),
    minScale: PhotoViewComputedScale.contained * 0.8,
    maxScale: PhotoViewComputedScale.covered * 2.0,
    initialScale: PhotoViewComputedScale.contained,
    enableRotation: true,
    customSize: MediaQuery.of(context).size * 0.47,
    //scaleStateController: scaleStateController,
  );

  Center _colimncenter3() => Center(
    child: FractionallySizedBox(
      widthFactor: 0.9,
      child: Container(
         color: const Color(0xffe4e9ed),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: toggleCheckeBox,
              focusColor: Colors.green,
            ),
            const Text('Marcar como concluído'),
          ],
        ),
      ),
    )
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _columnAppBar(),
        bottomNavigationBar: _columnBottomAppBar(),
        body: SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
                 children:  [
                   const SizedBox(height: 15,),
                   _columnText(),
                   _rowProgress(),
                   const SizedBox(height: 30,),
                   _columnText2(),
                   const SizedBox(height: 25,),
                   _columnText3(),
                   const SizedBox(height: 25,),
                   _columnCenter(),
                   IconButton(
                       onPressed: () async {
                         var imageBytes = await networkImageToByte('https://statics-marketplace.plataforma.grupoa.education/sagah/908ae4e5-e4ee-45bb-a8e4-61a3e52822f8/b10ecd27-0284-4a99-9615-930dc785fe07.png');
                         await Share.share(
                           'https://statics-marketplace.plataforma.grupoa.education/sagah/908ae4e5-e4ee-45bb-a8e4-61a3e52822f8/b10ecd27-0284-4a99-9615-930dc785fe07.png'
                         );
                       },
                       icon: const Icon(Icons.share)
                   ),
                   const SizedBox(height: 25,),
                   _colimncenter3()
                 ],
             ),
           ),
    );
  }

  Future<void> _shareImage() async {
    try {
      var request = await HttpClient().getUrl(Uri.parse(imageUrl));
      var response = await request.close();
      Uint8List bytes = await consolidateHttpClientResponseBytes(response);

      await Share.shareWithResult('Compartilhar imagem', 'https://statics-marketplace.plataforma.grupoa.education/sagah/908ae4e5-e4ee-45bb-a8e4-61a3e52822f8/b10ecd27-0284-4a99-9615-930dc785fe07.png', bytes, 'image/jpeg');
    } catch (e) {
      print('Erro ao compartilhar imagem: $e');
    }
  }


  void toggleCheckeBox(bool? value) {
    setState(() {
      isChecked = value ?? false;
    });
  }
}



