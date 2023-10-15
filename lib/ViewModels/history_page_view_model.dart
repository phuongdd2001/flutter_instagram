import 'package:flutter_instagram/Services/local_storage_services.dart';
import 'package:flutter_instagram/ViewModels/home_page_view_model.dart';
import 'package:flutter_instagram/locator.dart';
import 'package:stacked/stacked.dart';

class HistoryPageViewModel extends BaseViewModel{
 
  LocalStorageService _localStorageService = locator<LocalStorageService>();

List<dynamic>? getSavedList(){


  return  _localStorageService.getFromDisk(LocalStorageService.historyListKey);

}


void removeAllList(){
 _localStorageService.clearAll();
 notifyListeners();
}




}