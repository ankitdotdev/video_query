import 'package:flutter_test/flutter_test.dart';
import 'package:video_query/video_query.dart';
import 'package:video_query/video_query_platform_interface.dart';
import 'package:video_query/video_query_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVideoQueryPlatform
    with MockPlatformInterfaceMixin
    implements VideoQueryPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VideoQueryPlatform initialPlatform = VideoQueryPlatform.instance;

  test('$MethodChannelVideoQuery is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVideoQuery>());
  });

  test('getPlatformVersion', () async {
    VideoQuery videoQueryPlugin = VideoQuery();
    MockVideoQueryPlatform fakePlatform = MockVideoQueryPlatform();
    VideoQueryPlatform.instance = fakePlatform;

    expect(await videoQueryPlugin.getPlatformVersion(), '42');
  });
}
