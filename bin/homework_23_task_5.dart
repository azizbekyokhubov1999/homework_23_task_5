import 'package:homework_23_task_5/homework_23_task_5.dart' as homework_23_task_5;

import 'models/university.dart';
import 'services/network_service.dart';
void main() async{
String data = await NetworkService.getData(NetworkService.apiUniversity);
List<University> list = universityListFromData(data);
list.forEach((element) {
  print(element.instructors[0].email);
});
}
