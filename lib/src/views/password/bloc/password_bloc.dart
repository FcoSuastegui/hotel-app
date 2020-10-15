import 'package:clubimperial/src/data/models/response_model.dart';
import 'package:clubimperial/src/data/services/auth_service.dart';
import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:clubimperial/src/helpers/validator_string_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class PassWordBloc extends FormBloc<String, String> {
  final password = TextFieldBloc(
    validators: [
      ValidatorStringBloc.required,
    ],
  );
  final confirmPassword = TextFieldBloc(
    validators: [
      ValidatorStringBloc.required,
    ],
  );

  PassWordBloc() {
    addFieldBlocs(fieldBlocs: [password, confirmPassword]);
    password..addValidators([ValidatorStringBloc.minLength(password, 6)]);
    confirmPassword
      ..addValidators([ValidatorStringBloc.confirmPassword(password)])
      ..subscribeToFieldBlocs([password]);
  }

  @override
  void onSubmitting() async {
    final ResponseModel response = await AuthService().changePassWord({
      'idusuario': GetStorages.inst.idusuario,
      'password': password.value,
    });
    response.status
        ? emitSuccess(successResponse: response.message)
        : emitFailure(failureResponse: response.message);
  }
}
