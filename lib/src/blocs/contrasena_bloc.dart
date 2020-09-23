import 'package:clubimperial/src/blocs/validators/validators.dart';
import 'package:clubimperial/src/controllers/contrasena_controller.dart';
import 'package:clubimperial/src/models/response_model.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class ContrasenaBloc extends FormBloc<String, String> {
  final password = TextFieldBloc();
  final confirmPassword = TextFieldBloc();

  ContrasenaBloc() {
    addFieldBlocs(fieldBlocs: [password, confirmPassword]);
    password
      ..addValidators([
        Validators.requiredField(password),
        Validators.minLength(password, 6)
      ]);
    confirmPassword
      ..addValidators([
        Validators.requiredField(confirmPassword),
        Validators.confirmPassword(password)
      ])
      ..subscribeToFieldBlocs([password]);
  }

  @override
  void onSubmitting() async {
    final ResponseModel response =
        await ContrasenaController().changePassword(password.value);
    response.status
        ? emitSuccess(successResponse: response.message)
        : emitFailure(failureResponse: response.message);
  }
}
