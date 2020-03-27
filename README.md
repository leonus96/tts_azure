# Speech to text from Azure.

[![image alt](https://img.shields.io/badge/license-MIT-green)](https://github.com/leonus96/tts_azure/blob/master/LICENSE)
[![image alt](https://img.shields.io/pub/v/tts_azure)](https://pub.dev/packages/tts_azure/versions)

A Flutter package to use [Text to Speech from Azure.](https://azure.microsoft.com/es-es/services/cognitive-services/text-to-speech/)

Package that interacts with the Azure Cognitive Services REST API to convert text to speech.


## Getting Started

1. Create an account and subscribe in [Azure](https://azure.microsoft.com/)
2. [Add subscription.](https://portal.azure.com/#blade/Microsoft_Azure_Billing/SubscriptionsBlade) 
3. Add the [Cognitive Services](https://azure.microsoft.com/es-es/services/cognitive-services/) resource and get the endpoint and subscription key
4. [Install](https://pub.dev/packages/tts_azure#-installing-tab-) `tts_azure` package.

## Usage
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

### Complete Example
There is a very simple example project in the example folder. Check it out. Otherwise, keep reading to get up and running.

*Author: [@leonus96](https://github.com/leonus96)*
