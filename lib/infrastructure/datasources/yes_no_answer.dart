import 'package:app_yes_no_20024_2/domain/entities/message.dart';
import 'package:app_yes_no_20024_2/infrastructure/mapping/yes_no_answer_mapper.dart';
import 'package:app_yes_no_20024_2/infrastructure/models/yes_no_model.dart';
import 'package:dio/dio.dart';

class YesNoAnswer with YesNoAnswerMapper {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final respose = await _dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJsonMap(respose.data);
    return yesNoModelToMessage(yesNoModel);
  }
}
