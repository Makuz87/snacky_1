import 'package:snacky_1/src/features/order/domain/details.dart';
import 'package:snacky_1/src/features/order/domain/recommendation.dart';

Details DetailsBottomSheet(Recommendation recommendation) {
  switch (recommendation.title) {
    case "Mogli`s Cup":
      return DescriptionCard1;
    case "Balu`s Cup":
      return DescriptionCard2;
    case "Smiling David":
      return DescriptionCard3;
    case "Kai in a Cone":
      return DescriptionCard4;
    default:
      return DescriptionCard1;
  }
}
