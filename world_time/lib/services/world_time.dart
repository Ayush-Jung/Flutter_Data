import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String location;//location for teh UI
  String  time;// the time in that location
  String flag;//url to an asset flag icon
  String url;//location url for api endpoint
  bool isDayTime;//true or false if the daytime or not


  WorldTime({this.location,this.flag,this.url});

  Future<void> getData() async{
   try{

     // simulate network request for the user
     Response response =  await get('http://worldtimeapi.org/api/timezone/$url');
     Map  data=jsonDecode(response.body);
     //get propertise from the data
     String datetime=data['datetime'];
     String offset=data['utc_offset'].substring(1,3);

     //create datetime object

     DateTime now=  DateTime.parse(datetime);
     now= now.add(Duration(hours:int.parse(offset) ));
     //set time property
     isDayTime=now.hour >6 && now.hour<18? true:false;
    time=DateFormat.jm().format(now);
   }
  catch(e){
   print('Error is :$e');
   time='couldnt get time data';
   }
  }
}

