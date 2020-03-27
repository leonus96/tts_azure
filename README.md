# Speech to text from Azure.

[![image alt](https://img.shields.io/badge/license-MIT-green)](https://github.com/leonus96/tts_azure/blob/master/LICENSE)
[![image alt](https://img.shields.io/pub/v/tts_azure)](https://pub.dev/packages/tts_azure/versions)

A Flutter package to use [Text to Speech from Azure.](https://azure.microsoft.com/es-es/services/cognitive-services/text-to-speech/)

Package that interacts with the Azure Cognitive Services REST API to convert text to speech.


## Getting Started

1. Create an account and subscribe in [Azure](https://azure.microsoft.com/)
2. Add the [Cognitive Services](https://azure.microsoft.com/es-es/services/cognitive-services/) resource and get the endpoint (with region identifier) and subscription key (create resource group if necessary).
4. [Install](https://pub.dev/packages/tts_azure#-installing-tab-) `tts_azure` package.

## Usage
### Complete Example
There is a very simple example project in the [example](https://github.com/leonus96/tts_azure/blob/master/example/lib/main.dart) folder. Check it out. Otherwise, keep reading to get up and running.

### Install
To use this package, add `tts_azure` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/)

### Setting up
First, you must define a new `TTS Azure` object by initializing it and passing it the required parameters as such:

```dart
final ttsazure = TTSAzure("YOUR_SUBSCRIPTION_ID", "YOUR_REGION_IDENTIFIER");
```
### Convert Text ➡️ Speech
Finally, the only thing left to do is call the `play()` method to convert the text to speech, in this way:

```dart
String text = "Hello World";
String lang = "en-US";
String shortName = "BenjaminRUS"; // The voice.

ttsazure.play(text, lang, shortName);
```

**NOTE**: The Azure API allows you to use the authentication token (automatically obeyed by this package) only for 10 minutes, so this package updates the token in a minimum time of 9 minutes.

*Author: [@leonus96](https://github.com/leonus96)*

## *List of standart voices
<table>
<thead>
<tr>
<th>Locale</th>
<th>Language</th>
<th>Gender</th>
<th>Full service name mapping</th>
<th>Short name</th>
</tr>
</thead>
<tbody>
<tr>
<td><sup>1</sup><code>ar-EG</code></td>
<td>Arabic (Egypt)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ar-EG, Hoda)&quot;</td>
<td>&quot;ar-EG-Hoda&quot;</td>
</tr>
<tr>
<td><code>ar-SA</code></td>
<td>Arabic (Saudi Arabia)</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ar-SA, Naayf)&quot;</td>
<td>&quot;ar-SA-Naayf&quot;</td>
</tr>
<tr>
<td><code>bg-BG</code></td>
<td>Bulgarian</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (bg-BG, Ivan)&quot;</td>
<td>&quot;bg-BG-Ivan&quot;</td>
</tr>
<tr>
<td><code>ca-ES</code></td>
<td>Catalan (Spain)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ca-ES, HerenaRUS)&quot;</td>
<td>&quot;ca-ES-HerenaRUS&quot;</td>
</tr>
<tr>
<td><code>cs-CZ</code></td>
<td>Czech</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (cs-CZ, Jakub)&quot;</td>
<td>&quot;cs-CZ-Jakub&quot;</td>
</tr>
<tr>
<td><code>da-DK</code></td>
<td>Danish</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (da-DK, HelleRUS)&quot;</td>
<td>&quot;da-DK-HelleRUS&quot;</td>
</tr>
<tr>
<td><code>de-AT</code></td>
<td>German (Austria)</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (de-AT, Michael)&quot;</td>
<td>&quot;de-AT-Michael&quot;</td>
</tr>
<tr>
<td><code>de-CH</code></td>
<td>German (Switzerland)</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (de-CH, Karsten)&quot;</td>
<td>&quot;de-CH-Karsten&quot;</td>
</tr>
<tr>
<td><code>de-DE</code></td>
<td>German (Germany)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (de-DE, Hedda)&quot;</td>
<td>&quot;de-DE-Hedda&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (de-DE, HeddaRUS)&quot;</td>
<td>&quot;de-DE-HeddaRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (de-DE, Stefan, Apollo)&quot;</td>
<td>&quot;de-DE-Stefan-Apollo&quot;</td>
</tr>
<tr>
<td><code>el-GR</code></td>
<td>Greek</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (el-GR, Stefanos)&quot;</td>
<td>&quot;el-GR-Stefanos&quot;</td>
</tr>
<tr>
<td><code>en-AU</code></td>
<td>English (Australia)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-AU, Catherine)&quot;</td>
<td>&quot;en-AU-Catherine&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-AU, HayleyRUS)&quot;</td>
<td>&quot;en-AU-HayleyRUS&quot;</td>
</tr>
<tr>
<td><code>en-CA</code></td>
<td>English (Canada)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-CA, Linda)&quot;</td>
<td>&quot;en-CA-Linda&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-CA, HeatherRUS)&quot;</td>
<td>&quot;en-CA-HeatherRUS&quot;</td>
</tr>
<tr>
<td><code>en-GB</code></td>
<td>English (UK)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-GB, Susan, Apollo)&quot;</td>
<td>&quot;en-GB-Susan-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-GB, HazelRUS)&quot;</td>
<td>&quot;en-GB-HazelRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-GB, George, Apollo)&quot;</td>
<td>&quot;en-GB-George-Apollo&quot;</td>
</tr>
<tr>
<td><code>en-IE</code></td>
<td>English (Ireland)</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-IE, Sean)&quot;</td>
<td>&quot;en-IE-Sean&quot;</td>
</tr>
<tr>
<td><code>en-IN</code></td>
<td>English (India)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-IN, Heera, Apollo)&quot;</td>
<td>&quot;en-IN-Heera-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-IN, PriyaRUS)&quot;</td>
<td>&quot;en-IN-PriyaRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-IN, Ravi, Apollo)&quot;</td>
<td>&quot;en-IN-Ravi-Apollo&quot;</td>
</tr>
<tr>
<td><code>en-US</code></td>
<td>English (US)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-US, ZiraRUS)&quot;</td>
<td>&quot;en-US-ZiraRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-US, AriaRUS)&quot;</td>
<td>&quot;en-US-AriaRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-US, BenjaminRUS)&quot;</td>
<td>&quot;en-US-BenjaminRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (en-US, Guy24kRUS)&quot;</td>
<td>&quot;en-US-Guy24kRUS&quot;</td>
</tr>
<tr>
<td><code>es-ES</code></td>
<td>Spanish (Spain)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (es-ES, Laura, Apollo)&quot;</td>
<td>&quot;es-ES-Laura-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (es-ES, HelenaRUS)&quot;</td>
<td>&quot;es-ES-HelenaRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (es-ES, Pablo, Apollo)&quot;</td>
<td>&quot;es-ES-Pablo-Apollo&quot;</td>
</tr>
<tr>
<td><code>es-MX</code></td>
<td>Spanish (Mexico)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (es-MX, HildaRUS)&quot;</td>
<td>&quot;es-MX-HildaRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (es-MX, Raul, Apollo)&quot;</td>
<td>&quot;es-MX-Raul-Apollo&quot;</td>
</tr>
<tr>
<td><code>fi-FI</code></td>
<td>Finnish</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (fi-FI, HeidiRUS)&quot;</td>
<td>&quot;fi-FI-HeidiRUS&quot;</td>
</tr>
<tr>
<td><code>fr-CA</code></td>
<td>French (Canada)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (fr-CA, Caroline)&quot;</td>
<td>&quot;fr-CA-Caroline&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (fr-CA, HarmonieRUS)&quot;</td>
<td>&quot;fr-CA-HarmonieRUS&quot;</td>
</tr>
<tr>
<td><code>fr-CH</code></td>
<td>French (Switzerland)</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (fr-CH, Guillaume)&quot;</td>
<td>&quot;fr-CH-Guillaume&quot;</td>
</tr>
<tr>
<td><code>fr-FR</code></td>
<td>French (France)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (fr-FR, Julie, Apollo)&quot;</td>
<td>&quot;fr-FR-Julie-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (fr-FR, HortenseRUS)&quot;</td>
<td>&quot;fr-FR-HortenseRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (fr-FR, Paul, Apollo)&quot;</td>
<td>&quot;fr-FR-Paul-Apollo&quot;</td>
</tr>
<tr>
<td><code>he-IL</code></td>
<td>Hebrew (Israel)</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (he-IL, Asaf)&quot;</td>
<td>&quot;he-IL-Asaf&quot;</td>
</tr>
<tr>
<td><code>hi-IN</code></td>
<td>Hindi (India)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (hi-IN, Kalpana, Apollo)&quot;</td>
<td>&quot;hi-IN-Kalpana-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (hi-IN, Kalpana)&quot;</td>
<td>&quot;hi-IN-Kalpana&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (hi-IN, Hemant)&quot;</td>
<td>&quot;hi-IN-Hemant&quot;</td>
</tr>
<tr>
<td><code>hr-HR</code></td>
<td>Croatian</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (hr-HR, Matej)&quot;</td>
<td>&quot;hr-HR-Matej&quot;</td>
</tr>
<tr>
<td><code>hu-HU</code></td>
<td>Hungarian</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (hu-HU, Szabolcs)&quot;</td>
<td>&quot;hu-HU-Szabolcs&quot;</td>
</tr>
<tr>
<td><code>id-ID</code></td>
<td>Indonesian</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (id-ID, Andika)&quot;</td>
<td>&quot;id-ID-Andika&quot;</td>
</tr>
<tr>
<td><code>it-IT</code></td>
<td>Italian</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (it-IT, Cosimo, Apollo)&quot;</td>
<td>&quot;it-IT-Cosimo-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (it-IT, LuciaRUS)&quot;</td>
<td>&quot;it-IT-LuciaRUS&quot;</td>
</tr>
<tr>
<td><code>ja-JP</code></td>
<td>Japanese</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ja-JP, Ayumi, Apollo)&quot;</td>
<td>&quot;ja-JP-Ayumi-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ja-JP, Ichiro, Apollo)&quot;</td>
<td>&quot;ja-JP-Ichiro-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ja-JP, HarukaRUS)&quot;</td>
<td>&quot;ja-JP-HarukaRUS&quot;</td>
</tr>
<tr>
<td><code>ko-KR</code></td>
<td>Korean</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ko-KR, HeamiRUS)&quot;</td>
<td>&quot;ko-KR-HeamiRUS&quot;</td>
</tr>
<tr>
<td><code>ms-MY</code></td>
<td>Malay</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ms-MY, Rizwan)&quot;</td>
<td>&quot;ms-MY-Rizwan&quot;</td>
</tr>
<tr>
<td><code>nb-NO</code></td>
<td>Norwegian</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (nb-NO, HuldaRUS)&quot;</td>
<td>&quot;nb-NO-HuldaRUS&quot;</td>
</tr>
<tr>
<td><code>nl-NL</code></td>
<td>Dutch</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (nl-NL, HannaRUS)&quot;</td>
<td>&quot;nl-NL-HannaRUS&quot;</td>
</tr>
<tr>
<td><code>pl-PL</code></td>
<td>Polish</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (pl-PL, PaulinaRUS)&quot;</td>
<td>&quot;pl-PL-PaulinaRUS&quot;</td>
</tr>
<tr>
<td><code>pt-BR</code></td>
<td>Portuguese (Brazil)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (pt-BR, HeloisaRUS)&quot;</td>
<td>&quot;pt-BR-HeloisaRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (pt-BR, Daniel, Apollo)&quot;</td>
<td>&quot;pt-BR-Daniel-Apollo&quot;</td>
</tr>
<tr>
<td><code>pt-PT</code></td>
<td>Portuguese (Portugal)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (pt-PT, HeliaRUS)&quot;</td>
<td>&quot;pt-PT-HeliaRUS&quot;</td>
</tr>
<tr>
<td><code>ro-RO</code></td>
<td>Romanian</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ro-RO, Andrei)&quot;</td>
<td>&quot;ro-RO-Andrei&quot;</td>
</tr>
<tr>
<td><code>ru-RU</code></td>
<td>Russian</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ru-RU, Irina, Apollo)&quot;</td>
<td>&quot;ru-RU-Irina-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ru-RU, Pavel, Apollo)&quot;</td>
<td>&quot;ru-RU-Pavel-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ru-RU, EkaterinaRUS)&quot;</td>
<td>ru-RU-EkaterinaRUS</td>
</tr>
<tr>
<td><code>sk-SK</code></td>
<td>Slovak</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (sk-SK, Filip)&quot;</td>
<td>&quot;sk-SK-Filip&quot;</td>
</tr>
<tr>
<td><code>sl-SI</code></td>
<td>Slovenian</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (sl-SI, Lado)&quot;</td>
<td>&quot;sl-SI-Lado&quot;</td>
</tr>
<tr>
<td><code>sv-SE</code></td>
<td>Swedish</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (sv-SE, HedvigRUS)&quot;</td>
<td>&quot;sv-SE-HedvigRUS&quot;</td>
</tr>
<tr>
<td><code>ta-IN</code></td>
<td>Tamil (India)</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (ta-IN, Valluvar)&quot;</td>
<td>&quot;ta-IN-Valluvar&quot;</td>
</tr>
<tr>
<td><code>te-IN</code></td>
<td>Telugu (India)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (te-IN, Chitra)&quot;</td>
<td>&quot;te-IN-Chitra&quot;</td>
</tr>
<tr>
<td><code>th-TH</code></td>
<td>Thai</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (th-TH, Pattara)&quot;</td>
<td>&quot;th-TH-Pattara&quot;</td>
</tr>
<tr>
<td><code>tr-TR</code></td>
<td>Turkish (Turkey)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (tr-TR, SedaRUS)&quot;</td>
<td>&quot;tr-TR-SedaRUS&quot;</td>
</tr>
<tr>
<td><code>vi-VN</code></td>
<td>Vietnamese</td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (vi-VN, An)&quot;</td>
<td>&quot;vi-VN-An&quot;</td>
</tr>
<tr>
<td><code>zh-CN</code></td>
<td>Chinese (Mandarin, simplified)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (zh-CN, HuihuiRUS)&quot;</td>
<td>&quot;zh-CN-HuihuiRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (zh-CN, Yaoyao, Apollo)&quot;</td>
<td>&quot;zh-CN-Yaoyao-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (zh-CN, Kangkang, Apollo)&quot;</td>
<td>&quot;zh-CN-Kangkang-Apollo&quot;</td>
</tr>
<tr>
<td><code>zh-HK</code></td>
<td>Chinese (Cantonese, Traditional)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (zh-HK, Tracy, Apollo)&quot;</td>
<td>&quot;zh-HK-Tracy-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (zh-HK, TracyRUS)&quot;</td>
<td>&quot;zh-HK-TracyRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (zh-HK, Danny, Apollo)&quot;</td>
<td>&quot;zh-HK-Danny-Apollo&quot;</td>
</tr>
<tr>
<td><code>zh-TW</code></td>
<td>Chinese (Taiwanese Mandarin)</td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (zh-TW, Yating, Apollo)&quot;</td>
<td>&quot;zh-TW-Yating-Apollo&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Female</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (zh-TW, HanHanRUS)&quot;</td>
<td>&quot;zh-TW-HanHanRUS&quot;</td>
</tr>
<tr>
<td></td>
<td></td>
<td>Male</td>
<td>&quot;Microsoft Server Speech Text to Speech Voice (zh-TW, Zhiwei, Apollo)&quot;</td>
<td>&quot;zh-TW-Zhiwei-Apollo&quot;</td>
</tr>
</tbody>
</table>
