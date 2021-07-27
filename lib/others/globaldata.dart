class GlobalData {
  static final GlobalData _instance = GlobalData._internal();

  // passes the instantiation to the _instance object
  factory GlobalData() => _instance;

  //initialize variables in here
  GlobalData._internal() {
    _battery = 3;
    _heart = 5;
    _firstvisit = true;
    _itemfinished = false;
    _levelfinished = false;
  }

  bool _firstvisit = true;
  bool _itemfinished = false;
  bool _levelfinished = false;
  int _battery = 0;
  int _heart = 0;

  //short getter for my variable
  int get getbattery => _battery;
  int get getheart => _heart;
  bool get getvisit => _firstvisit;
  bool get getitemfinish => _itemfinished;
  bool get getlevelfinish => _levelfinished;

  //short setter for my variable
  //void set
  void firstVisitDone() => _firstvisit = false;
  void setitemFinished() => _itemfinished = true;
  void setlevelFinished() => _levelfinished = true;
  void setheart() => _heart = 5;
  void setbattery() => _battery = 3;

  void decrementBattery() => _battery--;
  void decrementHeart() => _heart--;
}

/*
  Flow Final Demo:
  

To do:
  1. Place robot sa input screen.
  2. Intro sa camp make short instructions
  3. Initial page make robot appear only for first visit
  4. 
 */