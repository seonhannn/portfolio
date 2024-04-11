class ScreenSize {
  ScreenSize._();

  factory ScreenSize() => instance;
  static ScreenSize instance = ScreenSize._();

  double _screenWidth = 0;
  double _screenHeight = 0;

  double get screenWidth => _screenWidth;
  double get screenHeight => _screenHeight;

  set screenWidth(w) => _screenWidth = w;
  set screenHeight(h) => _screenHeight = h;
}
