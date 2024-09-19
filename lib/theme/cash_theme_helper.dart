import 'package:shared_preferences/shared_preferences.dart';

class CasheThemeHelper{
  Future<void>casheThemeIndex(int themeIndex)async{
    final SharedPreferences shared =await SharedPreferences.getInstance();
    shared.setInt('THEME_INDEX', themeIndex);
  }

  Future<int>getCashedThemeIndex()async{
    final SharedPreferences shared=await SharedPreferences.getInstance();
    final cashedThemeIndex= shared.getInt('THEME_INDEX');
    if(cashedThemeIndex!=null){
      return cashedThemeIndex ;
    }else{
      return 0 ;
    }
  }
}