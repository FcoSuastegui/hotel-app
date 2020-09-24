import 'package:clubimperial/src/Blocs/Validators/validators.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class TarjetaBloc extends FormBloc<String, String> {
  // Controllador que contiene servicio y datos del cargo

  // Datos generales
  final nombreCompleto = TextFieldBloc();
  final correo = TextFieldBloc();
  final celular = TextFieldBloc();

  // Datos de tarjeta
  final cardNumber = TextFieldBloc();
  final expired = TextFieldBloc();
  final cvc = TextFieldBloc();

  TarjetaBloc() {
    addFieldBlocs(
      step: 0,
      fieldBlocs: [nombreCompleto, correo, celular],
    );
    addFieldBlocs(
      step: 1,
      fieldBlocs: [cardNumber, expired, cvc],
    );

    // Validador
    nombreCompleto..addValidators([Validators.requiredField(nombreCompleto)]);
    correo
      ..addValidators(
          [Validators.requiredField(correo), Validators.emailFormat(correo)]);
    celular
      ..addValidators([
        Validators.requiredField(celular),
        Validators.numeroCelular(correo)
      ]);

    cardNumber
      ..addValidators([
        Validators.requiredField(cardNumber),
        Validators.validateCardNumber(cardNumber)
      ]);
    expired..addValidators([Validators.validateCardValidThru(expired)]);
    cvc
      ..addValidators(
          [Validators.onlyNumber(cvc), Validators.validateCardCvv(cvc)]);
  }

  @override
  void onSubmitting() async {
    if (state.currentStep == 0) {
      emitSuccess();
    } else {
      //final expire = expired.value.split('/');
      /* final response = await controller.tarjetaPago({
        "nombreCompleto": nombreCompleto.value,
        "numero": cardNumber.value,
        "mes": expire[0],
        "anio": expire[1],
        "cvc": cvc.value,
        "celular": celular.value,
        "correo": correo.value
      }); */

      return emitSuccess(
        canSubmitAgain: true,
        successResponse: "success/Se ha registrado correctamente la reservación",
      );
    }
  }
}
