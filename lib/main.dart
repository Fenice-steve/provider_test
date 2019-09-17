import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dio_test/details_list_entity.dart';
import 'test_model.dart';
import 'dart:convert';
import 'list_model.dart';
import 'list_details_model.dart';
import 'category_model.dart';
import 'details_model_entity.dart';
import 'entity_factory.dart';
import 'list_details_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dio测试"),
        ),
        body: DioWidget(),
      ),
    );
  }

  Widget DioWidget() {
    return Container(
      child: Center(
        child: RaisedButton(
            color: Colors.red,
            onPressed: () {
              _getHttp();
            }),
      ),
    );
  }
}

List list = [];

void _getHttp() async {
  await getHttp().then((val) {
//    var data = json.decode(val.toString());
    print(val);

//    TestModel testModel = TestModel.fromJson(val);
//    testModel.resultData.forEach((item) => print(item.da.tid));
//    list = testModel.resultData;
//    print(list[0].did);
//    print(list[1].did);
//    print(list[3].did);
//      ListModel listModel = ListModel.fromJson(val);
//      listModel.resultData.forEach((item)=>print(item));
//      list = listModel.resultData;
//      print(list[0].hsRankRichID);

//    ListDetailsModel listDetailsModel = ListDetailsModel.fromJson(val);
////      listDetailsModel.resultData.forEach((item)=>print(item.hsRankID));
//    list = listDetailsModel.resultData;
//    print(list[0]);

//    CategoryModel categoryModel = CategoryModel.fromJson(data);
//    list = categoryModel.data;
//    categoryModel.data.forEach((item) => print(item.mallCategoryId));
//    categoryModel.data.forEach((item) => print(item.mallCategoryName));
//    print(list[0].bxMallSubDto[2].mallSubName);
//    print(list[1].bxMallSubDto[2].mallSubName);
//    print(list[2].bxMallSubDto[2].mallSubName);

  DetailsModelEntity detailsModelEntity = DetailsModelEntity.fromJson(val);
  print(detailsModelEntity.resultData[0].hsRankId);
  print(detailsModelEntity.resultData[1].hsRankNameCn);
  print(detailsModelEntity.resultData[0].hsRankExchangerate);

//  detailsModelEntity.resultData.forEach((item)=>print(item.hsRankNameCn));

//  DetailsListModel detailsListModel = DetailsListModel.fromJson(val);
//  print(detailsListModel.resultData[0].hsRankReleasedate);
  });
}

Future getHttp() async {
  try {
    Response response;
    Dio dio = new Dio();

//    print(response.data.toString());
//    response = await dio.post("http://api.hurun.cn/api/Values/Test");
//    response = await dio.post("http://api.hurun.cn/api/HsRank/HsRankDetails?id=1");
    response = await dio.post("http://api.hurun.cn/api/HsRank/HsRankList?tid=1");
//    response = await dio.post("http://v.jspang.com:8088/baixing/wxmini/getCategory");
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口出现异常，请检查代码和服务器情况.....');
    }

//    TestModel testModel = TestModel.fromJson();
//    print(response.data);
  } catch (e) {
    print(e);
  }
}
