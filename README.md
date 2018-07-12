Move Agora iOS Native SDK zip to this folder, and rename SDK zip to `Agora_Native_SDK_for_iOS_FULL.zip` / `Agora_Native_SDK_for_iOS_VOICE.zip` Open your terminal, cd to this folder and input  
```
./apple-cpu-arch-extract.sh Agora_Native_SDK_for_iOS_FULL.zip architectureType
```
or
```
./apple-cpu-arch-extract.sh Agora_Native_SDK_for_iOS_VOICE.zip architectureType
```

architectureType: Such as armv7, arm64, etc.
you can input two architectureType at most.

Finally, pressed enter and this zip will become you need sdk that includes architectures you want 

Agora iOS SDK can support these following architectures:

- i386
- armv7
- x86_64
- arm64
