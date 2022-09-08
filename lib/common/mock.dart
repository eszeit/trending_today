import 'package:trending_today/common/business_objects/playlist.dart';
import 'package:trending_today/common/colors.dart';
import 'package:trending_today/gen/assets.gen.dart';

class Mock {
  static List<Playlist> get getMockPlaylists => [
        Playlist(
          totalVideos: 30,
          newVideos: 10,
          watchedVideos: 15,
          asset: Assets.png.smashStockpile.path,
          name: 'Smash Stockpile',
          mainColor: AppColors.sunGold,
        ),
        Playlist(
          totalVideos: 18,
          newVideos: 18,
          watchedVideos: 0,
          asset: Assets.png.fgcRumble.path,
          name: 'FGC Rumble',
          mainColor: AppColors.purple,
        ),
        Playlist(
          totalVideos: 21,
          newVideos: 21,
          watchedVideos: 21,
          asset: Assets.png.valorantVolume.path,
          name: 'Valorant Volume',
          mainColor: AppColors.red,
        ),
      ];
}
