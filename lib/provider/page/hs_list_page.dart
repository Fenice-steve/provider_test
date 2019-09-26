import 'package:flutter/material.dart';
import 'package:flutter_dio_test/provider/model/list_model.dart';
import 'package:flutter_dio_test/provider/provider_widget.dart';
import 'package:flutter_dio_test/provider/widget/hs_list_widget.dart';
import 'package:flutter_dio_test/provider/view_model/hs_list_details_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// 榜单列表页
class HsListPage extends StatefulWidget {

  /// 榜单id
  final int rid;

  HsListPage(this.rid);

  @override
  _HsListPageState createState() => _HsListPageState();
}

class _HsListPageState extends State<HsListPage> with AutomaticKeepAliveClientMixin{

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => null;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ProviderWidget<HsListDetailsModel>(
      model: HsListDetailsModel(widget.rid),
      onModelReady: (model) => model.initData(),
      builder: (context, model, child){
        if(model.busy){
          return Container();
        }else if(model.error){
          return Container();
        }else if(model.empty){
          return Container();
        }
        return SmartRefresher(controller: model.refreshController,
        header: WaterDropHeader(),
//        footer: Refr,
        onRefresh: model.refresh,
          onLoading: model.loadMore,
          enablePullUp: true,
          child: ListView.builder(itemBuilder: (context, index){
            ListModel item = model.list[index];
            return HsListWidget(item);
          }),
        );
      },
    );
  }


}
