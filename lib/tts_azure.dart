library tts_azure;

import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:xml/xml.dart' as xml;
import 'package:http/http.dart' as http;


class TTSAzure {
  AudioPlayer _audioPlayer;
  String _regionIdentifier;
  String _subscriptionKey;
  String _accessToken;
  DateTime _accessTokenTimestamp;

  TTSAzure(String subscriptionKey, String regionIdentifier) {
    this._regionIdentifier = regionIdentifier;
    this._subscriptionKey = subscriptionKey;
    this._audioPlayer = AudioPlayer();
    _updateAccessToken();
  }

  Future<String> _getAccessToken() async {
    if(_accessTokenTimestamp == null
    || (_accessTokenTimestamp.difference(DateTime.now()).inMinutes >= 9)) {
      _accessTokenTimestamp = DateTime.now();
      await _updateAccessToken();
    }
    return _accessToken;
  }

  Future<void> _updateAccessToken() async {
    String url = "https://$_regionIdentifier.api.cognitive.microsoft.com/sts/v1.0/issueToken";
    Map<String, String> headers = {
      'Ocp-Apim-Subscription-Key': _subscriptionKey
    };
    http.Response response =  await http.post(url, headers: headers);
    _accessToken = response.body;
  }


  Future<void> speak(String text, String lang, String shortName) async {
    xml.XmlBuilder builder = xml.XmlBuilder();
    builder.element('speak', nest: () {
      builder.attribute('version', '1.0');
      builder.attribute('xml:lang', lang);
      builder.element('voice', nest: () {
        builder.attribute('xml:lang', lang);
        builder.attribute('name', shortName);
        builder.text(text);
      });
    });

    String body = builder.build().toXmlString();

    String url = "https://$_regionIdentifier.tts.speech.microsoft.com/cognitiveservices/v1";
    Map<String, String> headers = {
      'Authorization': 'Bearer ' + await _getAccessToken(),
      'cache-control': 'no-cache',
      'User-Agent': 'TTSPackage',
      'X-Microsoft-OutputFormat': 'riff-24khz-16bit-mono-pcm',
      'Content-Type': 'application/ssml+xml'
    };

    http.Response request = await http.post(url, headers: headers, body: body);
  
    Uint8List bytes = request.bodyBytes;

    final dir = await getApplicationDocumentsDirectory();
    final file = new File('${dir.path}/audio.mp3');

    await file.writeAsBytes(bytes);
    if (await file.exists()) {
      _audioPlayer.play(file.path);
    }
  }

  Future<void> stop() async {
    await _audioPlayer.stop();
  }
}



