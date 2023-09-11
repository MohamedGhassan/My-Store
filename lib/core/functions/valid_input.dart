import 'package:get/get.dart';

import '../../constant/message_auth.dart';

validInput(String val, int min, int max, type){
  if(type == "username")
    {
      if(!GetUtils.isUsername(val))
      {
        return "not invalid username";
      }
    }
  if(type == "email")
  {
    if(!GetUtils.isEmail(val))
    {
      return "not invalid email";
    }
  }
  if(type == "phone")
  {
    if(!GetUtils.isPhoneNumber(val))
    {
      return "not invalid phone";
    }
  }
 if(val.length > max ){
    return "$messageInputMax $max";
  }  if(val.isEmpty ){
    return messageInputEmpty;
  }
  if(val.length < min ){
    return "$messageInputMin $min";
  }
}