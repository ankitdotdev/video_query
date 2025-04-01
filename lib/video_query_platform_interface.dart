import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'video_query_method_channel.dart';

abstract class VideoQueryPlatform extends PlatformInterface {
  /// Constructs a VideoQueryPlatform.
  VideoQueryPlatform() : super(token: _token);

  static final Object _token = Object();

  static VideoQueryPlatform _instance = MethodChannelVideoQuery();

  /// The default instance of [VideoQueryPlatform] to use.
  ///
  /// Defaults to [MethodChannelVideoQuery].
  static VideoQueryPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VideoQueryPlatform] when
  /// they register themselves.
  static set instance(VideoQueryPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
