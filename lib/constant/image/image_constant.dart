class ImageConstants {

  ImageConstants._init();
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  //String get logo => toPng('veli');

  //String get hotDog => toPng('hotdogs');
  //String get projeIcon => toPng('cirlce_hwa');

  String get humanPhoto => toJpg('IMG_3982');

  String toPng(String name) => 'assets/images/png/$name.png';

  String toJpg(String name) => 'assets/images/jpg/$name.jpg';
}