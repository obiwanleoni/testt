import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:cleanflutter/ui/model/user.dart';
import 'package:cleanflutter/ui/utils/uxhelper/app_colors.dart';
import 'package:flutter/widgets.dart';

class RowView extends StatelessWidget {
  User user;

  RowView(User user) {
    this.user = user;
  }


  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(margin: const EdgeInsets.only(left: 16.0)),
              ClayContainer(
                  emboss: true,
                  depth: 40,
                  curveType: CurveType.concave,
                  borderRadius: 50,
                  surfaceColor: AppColors.blue_bubble,
                  child: new Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.width * 0.1,
                      decoration: new BoxDecoration(
                          borderRadius:
                              new BorderRadius.all(new Radius.circular(50.0)),
                          image: new DecorationImage(
                              image: new NetworkImage(user.picture),
                              fit: BoxFit.cover),
                          color: AppColors.blue_bubble))),
              new Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: new BoxDecoration(
                      color: AppColors.blue_bubble,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(10.0))),
                  margin: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                  child: ClayContainer(
                      emboss: false,
                      depth: 20,
                      curveType: CurveType.convex,
                      borderRadius: 10,
                      surfaceColor: AppColors.blue_bubble,
                      child: new Column(children: <Widget>[
                        new Container(
                            padding: new EdgeInsets.all(10.0),
                            child: new Text("Nume: " + user.first,
                                maxLines: 3,
                                style: new TextStyle(color: AppColors.white))),
                        new Container(
                            padding: new EdgeInsets.all(10.0),
                            child: new Text("Oras: " + user.city,
                                maxLines: 3,
                                style: new TextStyle(color: AppColors.white))),
                      ])))
            ]));
  }
}
