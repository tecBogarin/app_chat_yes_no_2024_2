import 'package:app_yes_no_20024_2/domain/entities/message.dart';
import 'package:app_yes_no_20024_2/infrastructure/models/yes_no_model.dart';

mixin YesNoAnswerMapper {
  Message yesNoModelToMessage(YesNoModel model) => Message(
      text: model.answer == 'yes' ? 'Si' : 'No',
      fromWho: FromWho.hers,
      imageUrl: model.image);
}
