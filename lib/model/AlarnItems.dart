
class AlarmItems {

   String days;
   String numberClock;
   String pmAm;
   String mode;

   AlarmItems(this.days, this.numberClock, this.pmAm, this.mode);


}

List<AlarmItems> items = [

  AlarmItems(
      "Mon | Tue",
      "09:23",
      "AM",
      "Wake Up"
  ),
  AlarmItems(
      "Fri | Mon",
      "00:19",
      "PM",
      "sleep"
  ),
  AlarmItems(
      "Off",
      "12:03",
      "AM",
      "Wake Up"
  ),
  AlarmItems(
      "Tue | Sun",
      "17:33",
      "PM",
      "sleep"
  ),
  AlarmItems(
      "Tue | Sun",
      "16:04",
      "PM",
      "sleep"
  ),
  AlarmItems(
      "Off",
      "01:33",
      "AM",
      "sleep"
  ),
  AlarmItems(
      "Tue | Sun",
      "03:03",
      "AM",
      "sleep"
  ),
  AlarmItems(
      "Tue | Fri",
      "20:20",
      "PM",
      "sleep"
  ),
];