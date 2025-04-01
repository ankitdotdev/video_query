
import 'video_query_platform_interface.dart';

class VideoQuery {
  Future<String?> getPlatformVersion() {
    return VideoQueryPlatform.instance.getPlatformVersion();
  }
}
