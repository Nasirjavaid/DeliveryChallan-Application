import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vision_plus/models/smDeliveryChallan.dart';
import 'package:vision_plus/network/httpServices.dart';

class HttpServiceSmDeliveryChallan {
  // Get Json INV_DELIVERY_CHALLAN

  HttpService httpService = HttpService();
 

  Future<List<Items>> getSMDeliveryChallanDetails(int offset,int maxLimit) async {



    String endpoint = "sm_delivery_challans/?offset=$offset&limit=$maxLimit";
      List<Items> itemsList;

    // List<SmDeliveryChallan> smDeliveryChallan;

    final http.Response response = await httpService.get(endpoint);

    if (response.statusCode == 200) {
// Map<String, dynamic> map = json.decode(response.body);
// List<dynamic> data = map["items"];

      // var json = jsonDecode(response.body);
      // List<dynamic> data = json["dataKey"];

      //smDeliveryChallan = (json as List).map((model) => SmDeliveryChallan.fromJson(model)).toList();

      final jsonResponce = json.decode(response.body);
      //Items items = Items.fromJson(jsonResponce);
      
      SmDeliveryChallan smDc = SmDeliveryChallan.fromJson(jsonResponce);
      itemsList = smDc.items;

      for(int b=0; b<itemsList.length; b++)
      {

        int mmm =  itemsList[b].dcId;
        String driver =  itemsList[b].driverName;
        print("Data in http :  Dc id $mmm and driver name id $driver");

      };
      

     // // List<dynamic> data = data["dataKey"];
     // print("items data ${itemsList.length}");
      // print("items data ${smDc.items[0].dcId}");

      // print("items Links data ${smDc.items[0].links.length}");
      // print("items Links data  ${smDc.items[0].links[0].href}");

      //smDeliveryChallan = (smDc as List).map((model) => SmDeliveryChallan.fromJson(model)).toList();

      //print(response.body);
      
    } else if(response.statusCode ==110) {
     
      throw Exception("Data");
    }
    
    return itemsList;
   
  }
}
