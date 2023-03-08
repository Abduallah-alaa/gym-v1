import 'package:gym/model/TrainersModel.dart';
import 'package:http/http.dart' as http;

class TrainersControlar {
  Future<List<TrainersModel>?> getTrainersModel() async {
    var uri = Uri.parse("Http://gym.fadiramzi..dev/api/mobile/v1/trainers");
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return trainersModelFromJson(json);
    }
    return null;
  }
}
