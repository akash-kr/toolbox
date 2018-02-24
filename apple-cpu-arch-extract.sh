echo "指定需要解压缩的文件名 需要抽取的CPU架构 参数设置为 armv7 arm64 i386 x86_64";
echo "#######################################"
echo "#  指定的解压缩的文件为 $1"
echo "#######################################"
unzip "$(pwd)/$1"
#先解压文件 再去判断需要执行的脚本
if [ -d "$(pwd)/Agora_Native_SDK_for_iOS_VOICE" ];then
:
PROJ_TOP="$(pwd)/Agora_Native_SDK_for_iOS_VOICE/libs/AgoraAudioKit.framework"
cd ${PROJ_TOP}
if  [ ! -n "$3" ];then
echo "#######################################"
echo "#  指定的cpu的架构为 $2 "
echo "#######################################"
lipo AgoraAudioKit -thin $2  -output AgoraAudioKit-$2
rm AgoraAudioKit
mv AgoraAudioKit-$2 AgoraAudioKit
else
:
echo "#######################################"
echo "#  指定的cpu的架构为 $2 $3"
echo "#######################################"
lipo AgoraAudioKit -thin $2  -output AgoraAudioKit-$2
lipo AgoraAudioKit -thin $3  -output AgoraAudioKit-$3
rm AgoraAudioKit
lipo -create AgoraAudioKit-$2  AgoraAudioKit-$3 -output AgoraAudioKit
rm AgoraAudioKit-$2
rm AgoraAudioKit-$3
fi
lipo -info AgoraAudioKit
cd ../../../
zip -q -r -m -o "$(pwd)/Agora_Native_SDK_for_iOS_VOICE.zip" "Agora_Native_SDK_for_iOS_VOICE"
echo "#######################################"
echo "# apple-cpu-arch-extract success :) !"
echo "#######################################"


elif [ -d "$(pwd)/Agora_Native_SDK_for_iOS_FULL" ];then
:
PROJ_TOP="$(pwd)/Agora_Native_SDK_for_iOS_FULL/libs/AgoraRtcEngineKit.framework"
cd ${PROJ_TOP}
if  [ ! -n "$3" ];then
    echo "#######################################"
    echo "#  指定的cpu的架构为 $2 "
    echo "#######################################"
    lipo AgoraRtcEngineKit -thin $2  -output AgoraRtcEngineKit-$2
    rm AgoraRtcEngineKit
    mv AgoraRtcEngineKit-$2 AgoraRtcEngineKit
    else
    :
    echo "#######################################"
    echo "#  指定的cpu的架构为 $2 $3"
    echo "#######################################"
    lipo AgoraRtcEngineKit -thin $2  -output AgoraRtcEngineKit-$2
    lipo AgoraRtcEngineKit -thin $3  -output AgoraRtcEngineKit-$3
    rm AgoraRtcEngineKit
    lipo -create AgoraRtcEngineKit-$2  AgoraRtcEngineKit-$3 -output AgoraRtcEngineKit
    rm AgoraRtcEngineKit-$2
    rm AgoraRtcEngineKit-$3
    fi
lipo -info AgoraRtcEngineKit
cd ../../../
zip -q -r -m -o "$(pwd)/Agora_Native_SDK_for_iOS_FULL.zip" "Agora_Native_SDK_for_iOS_FULL"
echo "#######################################"
echo "# apple-cpu-arch-extract success :) !"
echo "#######################################"

else
:
fi


