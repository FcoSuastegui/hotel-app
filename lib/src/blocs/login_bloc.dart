import 'package:clubimperial/Src/Blocs/Validators/validators.dart';
import 'package:clubimperial/src/controllers/login_controller.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class LoginFormBloc extends FormBloc<String, String> {
  final email = TextFieldBloc();
  final password = TextFieldBloc();

  LoginFormBloc() {
    addFieldBlocs(fieldBlocs: [email, password]);
    email
      ..addValidators(
          [Validators.requiredField(email), Validators.emailFormat(email)])
      ..subscribeToFieldBlocs([email]);
    password
      ..addValidators([Validators.requiredField(password)])
      ..subscribeToFieldBlocs([password]);
  }

  @override
  void onSubmitting() async {
    final response = await LoginController().login({
      'email': email.value,
      'password': password.value,
    });
    if (response['status']) {
      emitSuccess();
    } else {
      emitFailure(failureResponse: response['message']);
    }
  }
}
