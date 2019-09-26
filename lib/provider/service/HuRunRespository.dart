import 'package:flutter_dio_test/provider/config/net/hurun_baifu_api.dart';
import 'package:flutter_dio_test/provider/model/list_model.dart';

class HuRunRepository {
  // 百富榜榜单详情
  static Future fetchBaiFuDetails(int rankId, {int rid}) async {
    var response = await http.post('HsRankList?tid=$rid');
    print('百富榜详情数据: ${response.data}');
    return response.data
        .map<ListModel>((item) => ListModel.fromJson(item))
        .toList();
  }
}
