import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'video_query_platform_interface.dart';

/// An implementation of [VideoQueryPlatform] that uses method channels.
class MethodChannelVideoQuery extends VideoQueryPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('video_query');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
