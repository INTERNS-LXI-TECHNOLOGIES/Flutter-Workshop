import 'dart:ffi';

class Activity {
  String imageUrl;
  String name;
  String type;
  String delivery;
  String spend;
  List<String> startTimes;
  int rating;
  

  Activity({
    this.imageUrl,
    this.name,
    this.type,
    this.delivery,
    this.spend,
    this.startTimes,
    this.rating,
    
  });
} 