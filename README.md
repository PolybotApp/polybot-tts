# Polybot Text To Speech

Azure text to speech module for React Native (iOS and Android)

## Installing (React Native >= 0.60.0)
`$ npm install polybot-tts --save`

## For iOS Configuration
Go to your ios folder and run:
```
pod install
```

**_ IMPORTANT _**



The Project Running in iOS 9.3 or higher

## For Android Configuration
Open the AndroidManifest.xml and Verify your Permission
```
<uses-permission android:name="android.permission.RECORD_AUDIO" />
<uses-permission android:name="android.permission.INTERNET" />
```

Open the android/build.gradle and add repository of microsoft
```
allprojects {
    repositories {
        mavenLocal()
        maven {
            // All of React Native (JS, Obj-C sources, Android binaries) is installed from npm
            url("$rootDir/../node_modules/react-native/android")
        }
        maven {
            // Android JSC is installed from npm
            url("$rootDir/../node_modules/jsc-android/dist")
        }
        google()
        jcenter()
        maven { url 'https://jitpack.io' }
        mavenCentral()
        maven {
            url 'https://csspeechstorage.blob.core.windows.net/maven/'
        }
    }
}
```

And change your min-sdk-version to 19
```
    ext {
        buildToolsVersion = "28.0.3"
        minSdkVersion = 19
        compileSdkVersion = 28
        targetSdkVersion = 28
    }
```

**_ IMPORTANT _**



The Project Android Needs Min Android 4.4 KitKat (API 19)


## Usage

For transform basic Text To Speech.

```javascript
import { createTextToSpeechByText } from 'polybot-tts';


createTextToSpeechByText(
      'Your Text For Speech in Here',
      'pt-BR-FranciscaNeural', //Your Neural Language [https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/language-support#neural-voices]
      'Your Access Key',
      'Your Region',
    )
      .then((success) => {
        // Your Success Boolean Return
      })
      .catch((error) => {
        // Your Error String Message
      });
  };
```

```javascript
import { createTextToSpeechByText } from 'polybot-tts';


createTextToSpeechBySSML(
      'Your SSML String in Here',
      'pt-BR-FranciscaNeural', //Your Neural Language (https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/language-support#neural-voices)
      'Your Access Key',
      'Your Region',
    )
      .then((success) => {
        // Your Success Boolean Return
      })
      .catch((error) => {
        // Your Error String Message
      });
  };
```
For STOP audio text
```javascript
import { stopEdge } from 'polybot-tts';


stopEdge()
```
For listener on Audio Finish
```
For STOP audio text
```javascript
import TTSEdge from 'polybot-tts';


TTSEdge.addEventListener('ttedge-finish', (event) =>
  console.log('ttedge-finish', event) // Your Listener To Finish Audio
);
```