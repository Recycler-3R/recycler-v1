class GlobalData {
  static final GlobalData _instance = GlobalData._internal();

  // passes the instantiation to the _instance object
  factory GlobalData() => _instance;

  //initialize variables in here
  GlobalData._internal() {
    _battery = 3;
    _heart = 5;
  }

  int _battery = 0;
  int _heart = 0;

  //short getter for my variable
  int get getbattery => _battery;
  int get getheart => _heart;

  //short setter for my variable

  void setheart() => _heart = 5;
  void setbattery() => _battery = 3;

  void decrementBattery() => _battery--;
  void decrementHeart() => _heart--;
}
