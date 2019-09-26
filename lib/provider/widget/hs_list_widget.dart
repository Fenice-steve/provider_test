import 'package:flutter/material.dart';
import 'package:flutter_dio_test/provider/model/list_model.dart';
import 'Image.dart';


class HsListWidget extends StatelessWidget {

  // 实例化model
  final ListModel listModel;

  final int index;

  final GestureTapCallback onTap;

  // 首页置顶
  final bool top;

  const HsListWidget(this.listModel,  {this.index, this.onTap, this.top});

  @override
  Widget build(BuildContext context) {

    var backgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return Stack(
      children: <Widget>[
        Material(
          color: top ? Theme.of(context).accentColor.withAlpha(10) : backgroundColor,
          child: InkWell(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: Border(
                    bottom: Divider.createBorderSide(context, width: 0.7),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    WrapperImage(url: listModel.resultData[index].hsRankRichChaList[index].hsCharacterPhoto, width: 40, height: 40),
                  Text(listModel.resultData[index].hsRankRichChaEn)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
