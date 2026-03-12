import 'package:recast_design_task/core/constants/app_images.dart';
import 'package:recast_design_task/features/home/data/models/venue_model.dart';

class VenueData {
  static const List<VenueModel> venues = [
    VenueModel(
      title: 'Ceano',
      subTitle: 'Nikkei',
      imageUrl: AppImages.ceano,
    ),
    VenueModel(
      title: 'Nobiko',
      subTitle: 'Restaurant',
      imageUrl: AppImages.nobiko,
    ),
    VenueModel(
      title: 'Dovely',
      subTitle: 'Casual',
      imageUrl: AppImages.dovely,
    ),
    VenueModel(
      title: 'Olivestree',
      subTitle: 'Bakery',
      imageUrl: AppImages.oliverstree,
    ),
  ];
}
