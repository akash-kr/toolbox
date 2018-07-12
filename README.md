## To-Dos

1. Download apple-cpu-arch-extract.sh from to a folder on your computer/server
2. Copy the iOS Native SDK zip to the same folder where you have copied apple-cpu-arch-extract.sh
3. Rename the SDK to Agora_Native_SDK_for_iOS_FULL.zip or Agora_Native_SDK_for_iOS_VOICE.zip
4. Open your terminal and cd to the folder where you have copied apple-cpu-arch-extract.sh
5. Execute one of following commands, depending on the name of the zip file

`./apple-cpu-arch-extract.sh Agora_Native_SDK_for_iOS_FULL.zip <architectureType>`

or

`./apple-cpu-arch-extract.sh Agora_Native_SDK_for_iOS_VOICE.zip <architectureType>`

6. A maximum of two values from the below list are supported for <architectureType>:

	1. i386
	2. armv7
	3. x86_64
	4. arm64

7. The resulting file will be the SDK that includes the architecture you need.
