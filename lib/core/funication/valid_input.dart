import 'package:get/get.dart';

validInput( String val ,int min ,int max ,String type) {

  if (type == "username"){

    if(!GetUtils.isUsername(val)){
      return "not valid username" ;
    }

  }
  if (type == "email"){

    if(!GetUtils.isEmail(val)){
      return "not valid username" ;
    }

  }
  if (type == "phone"){

    if(!GetUtils.isPhoneNumber(val)){
      return "not valid username" ;
    }

  }
  if(val.length < min){
    return "can't be less then $min " ;
  }
  if(val.length > max){
    return "can't be larger then $max " ;
  }
  if(val.isEmpty){
    return "can't be Empty " ;
  }
}