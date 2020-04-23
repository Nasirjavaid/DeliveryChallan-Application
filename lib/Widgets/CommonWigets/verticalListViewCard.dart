import 'package:flutter/material.dart';
import 'package:vision_plus/Screens/SMDCDetailScreen/smDCdetailScreen.dart';
import 'package:vision_plus/config/appConstants.dart';
import 'package:vision_plus/models/smDeliveryChallan.dart';

class VericalListViewCard extends StatelessWidget {

  Items items;

  VericalListViewCard({
    Key key,
    this.items,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Card(
    elevation: 8.0,
    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    child: Container(
      decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
      child:  ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.card_giftcard, color: Colors.white),
      ),
      title:  items.driverName !=null ? Text( 
        items.driverName,
        style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
      ) : Text("N/A",style: AppTypographyStyles.smallTextStyleNotVailable), 
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           items.dcNo !=null ? Text("DC# ${items.dcNo}", style: AppTypographyStyles.smallTextStyle, ) : Text("N/A",style:AppTypographyStyles.smallTextStyle),
          items.dcDate !=null ? Text(DateTimeConverter.getDateAndTime(items.dcDate), style: AppTypographyStyles.smallTextStyle) :Text("N/A",style:AppTypographyStyles.smallTextStyle),
           Row(children: <Widget>[
            Spacer(),
            
            items.status !=null ? Text(items.status, style: AppTypographyStyles.smallTextStyle.apply(color:Color.fromRGBO(28, 192, 159, .9))) :Text("N/A",style:AppTypographyStyles.smallTextStyle),

        ],)
        ],
       
      ),
      // trailing:
      //     Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DcDetailScreen(items: items,)));}

    ),
      ),));
    
  }
  }




