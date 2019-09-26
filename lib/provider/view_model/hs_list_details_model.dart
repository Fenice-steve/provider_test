import 'package:flutter_dio_test/provider/view_state_list_model.dart';
import 'package:flutter_dio_test/provider/view_state_refresh_list_model.dart';
import 'package:flutter_dio_test/provider/service/HuRunRespository.dart';

class HsListDetailsModel extends ViewStateRefreshListModel{

  final int rid;

  HsListDetailsModel(this.rid);

  @override
  Future<List> loadData({int pageNum}) async{
    // TODO: implement loadData
    return await HuRunRepository.fetchBaiFuDetails(pageNum,rid: rid);
  }




//  @override
//  onCompleted(List data) {
//    // TODO: implement onCompleted
//    return super.onCompleted(data);
//  }

}