import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:ramadan_cmpetitions/core/resources/no_access_exception.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/core/servers/dio_helper.dart';
import 'package:ramadan_cmpetitions/core/servers/url.dart';
import 'package:ramadan_cmpetitions/shared_preferences.dart';

String getAccessToken(){
  String accessToken = CacheHelper.getData(key:TOKEN_KEY);
  String refreshToken = CacheHelper.getData(key:'refresh');
  if(JwtDecoder.isExpired(accessToken))
  {
    if(JwtDecoder.isExpired(refreshToken))
    {
      throw NoAccessException('noAccess');
    }else{
      refreshAccessToken(refreshToken: refreshToken);
      return CacheHelper.getData(key: TOKEN_KEY);
    }
  }
  return accessToken;
}


Future<void> refreshAccessToken({
  required String refreshToken,
}) async {
  await DioHelper.loginGetToken(
      path: URL_REFRESH_TOKEN,
      data: {
        'refresh': refreshToken,
      }).then((value) {
    CacheHelper.saveData(key: TOKEN_KEY, value: value.data['access']);
  }).catchError((onError) {
  });
}

String convertEnglishDigitToArabic(String number){
  List<String> englishNumber = number.split('');
  String arabicNumber = '';
  for(int i = 0 ;i<englishNumber.length ;i++){
    switch(englishNumber[i]){
      case '0': arabicNumber += '٠';
      break;
      case '1': arabicNumber += '١';
      break;
      case '2': arabicNumber += '٢';
      break;
      case '3': arabicNumber += '٣';
      break;
      case '4':  arabicNumber += '٤';
      break;
      case '5': arabicNumber += '٥';
      break;
      case '6': arabicNumber += '٦';
      break;
      case '7': arabicNumber += '٧';
      break;
      case '8': arabicNumber += '٨';
      break;
      case '9':
        arabicNumber += '٩';
        break;
    }
  }
  return arabicNumber;
}


