abstract class MtmStates {}

class MtmInitialState extends MtmStates {}

class MtmBottomNavState extends MtmStates {}

class MtmGetPhotos extends MtmStates {}

class MtmGetDataOk extends MtmStates {}

class MtmGetDataError extends MtmStates {
  final String? error;
  MtmGetDataError(this.error);
}
