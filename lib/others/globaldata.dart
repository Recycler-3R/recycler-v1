class GlobalData {
  static final GlobalData _instance = GlobalData._internal();

  // passes the instantiation to the _instance object
  factory GlobalData() => _instance;

  //initialize variables in here
  GlobalData._internal() {
    _battery = 3;
  }

  int _battery = 0;

  //short getter for my variable
  int get getbattery => _battery;

  //short setter for my variable
  void setbattery() => _battery = 3;

  void decrementBattery() => _battery--;
}
