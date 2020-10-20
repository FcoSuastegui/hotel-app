import 'package:clubimperial/app/controller/firebase_controller.dart';
import 'package:clubimperial/app/src/data/models/response_model.dart';
import 'package:clubimperial/app/src/data/services/auth_service.dart';
import 'package:clubimperial/app/src/helpers/get_storages.dart';
import 'package:clubimperial/app/src/helpers/validator_string_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class LoginBloc extends FormBloc<String, String> {
  final email = TextFieldBloc(validators: [
    ValidatorStringBloc.required,
    ValidatorStringBloc.emailFormat
  ]);
  final password = TextFieldBloc(validators: [ValidatorStringBloc.required]);

  LoginBloc() {
    addFieldBlocs(fieldBlocs: [email, password]);
  }

  @override
  Future<void> close() {
    email?.close();
    password?.close();
    return super.close();
  }

  @override
  void onSubmitting() async {
    final ResponseModel response = await AuthService().login({
      'email': email.value,
      'password': password.value,
    });

    if (response.status) {
      GetStorages.inst.token = response.data['token'];
      GetStorages.inst.idusuario = response.data['idUsuario'];
      GetStorages.inst.sistema = response.data['sistema'];
      GetStorages.inst.idsocio = response.data['idsocio'];
      GetStorages.inst.nombre = response.data['nombre'];
      GetStorages.inst.email = response.data['email'];
      GetStorages.inst.avatar = response.data['avatar'];
      GetStorages.inst.page = '/home';
      await FireBaseController.inst.init();
      emitSuccess();
    } else {
      emitFailure(failureResponse: response.message);
    }
  }
}
