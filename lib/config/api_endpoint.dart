class APIEndPoints {
  ///test
  // static String endPoint = "http://192.168.1.69:8080";

  ///live
  static String endPoint = "https://publicserver-1-e6495979.deta.app";

  ///area selection
  static String getCountries = "/getCountries/";
  static String getStates = "/getStates/";
  static String getCities = "/getCities/";
  static String getAreas = "/getAreas/";

  ///get Area Masjid
  static String getAreaMasjid = "/getMasjids/";

  ///getCurrentNamaz
  static String getACurrentNamaz =
      "/getCurrentNamaz/6452460ecc1442e367ebfc51/64524c197376c988648fd383/6457b9ebe40080c4d619babf/645fa2adc6e55ab5d1441087";

  ///get Single Masjid
  static String getSingleMasjid = "/getMasjid/";

  ///get Config
  static String getConfig = "/getConfig/";

  ///get Namaz Time
  static String getNamazTime = "/getNamazTime/";

  ///get Namaz Time With Coordinates
  static String getNamazTimeWithCoordinates = "/getNamazTimeWithCoordinates/";
}
