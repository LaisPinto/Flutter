import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum TtsState {playing, stopped, paused, continued}

class _MyHomePageState extends State<MyHomePage> {

  final FlutterTts _flutterTts = FlutterTts();
  late TtsState _ttsState;
  double _volume = 0.5;

  Widget _rowTextFild() => Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
      decoration: const InputDecoration(
        labelText: "Digite o que quiser... vou falar o que quiser",
        labelStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(),
      ),
      style: const TextStyle(color: Colors.black, fontSize: 18.0),
      textAlign: TextAlign.center,
      onFieldSubmitted: (text) => _speak(text),
    ),
  );

  Widget _rowElevatedButtonSpeak() => ElevatedButton(
      onPressed: () => _speak("Hi, I'm Laís Pinto. How are you? Thank's a lot."),
      child: const Text("Clique aqui para o app falar")
  );

  Widget _rowElevatedButtonStop() => ElevatedButton(
      onPressed: () => _stop(),
      child: const Text("Clique aqui para o app parar de falar")
  );

  Widget _rowSlider() => Slider(
    value: _volume,
    min: 0.0,
    max: 1.0,
    divisions: 10,
    label: "Volume $_volume",
    onChanged: (newVolume) => setState(() {
      _volume = newVolume;
    }),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            _rowTextFild(),
            _rowElevatedButtonSpeak(),
            _rowElevatedButtonStop(),
            _rowSlider()
          ],
        )
    );
  }

  @override
  void initState() {
    super.initState();
    _ttsState = TtsState.stopped;
  }

  @override
  void dispose() {
    super.dispose();
    _flutterTts.stop();
  }

  Future _speak(String message) async {
    await _flutterTts.setVolume(_volume);
    // await _flutterTts.setPitch(1.0);
    // await _flutterTts.setSpeechRate(1.0);
    await _flutterTts.setLanguage("pt-BR");

    if (await _flutterTts.speak(message)) {
      setState(() {
        _ttsState = TtsState.playing;
      });
    }
  }

  Future _stop() async {
    if (await _flutterTts.stop()) {
      setState(() {
        _ttsState = TtsState.stopped;
      });
    }
  }

}