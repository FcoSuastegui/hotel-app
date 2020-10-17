/* import 'package:clubimperial/app/src/Blocs/tarjeta_bloc.dart';
import 'package:clubimperial/app/src/Helpers/formatters.dart';
import 'package:clubimperial/app/src/widgets/Alerts/custom_alert.dart';
import 'package:clubimperial/app/src/widgets/AppBar/app_bar_custom.dart';
import 'package:clubimperial/app/src/widgets/Fields/input_text_field_bloc.dart';
import 'package:clubimperial/app/src/widgets/Loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:get/get.dart';

class ReservacionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TarjetaBloc(),
      child: Builder(
        builder: (context) {
          final tarjeta = context.bloc<TarjetaBloc>();
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBarCustom(
              appBarTitle: 'Reservar',
              leadingIcon: Icons.arrow_back,
            ),
            body: FormBlocListener<TarjetaBloc, String, String>(
              onSubmitting: (context, state) => LoadingDialog.show(context),
              onSuccess: (context, state) async {
                LoadingDialog.hide(context);
                if (state.stepCompleted == state.lastStep) {
                  final resp = state.successResponse.split('/');
                  await Get.dialog(
                    CustomAlert(
                      type: resp[0] == 'error'
                          ? AlertDialogType.ERROR
                          : AlertDialogType.SUCCESS,
                      action: () => Get.back(),
                      text: resp[1],
                    ),
                  );

                  if (resp[0] != 'error') {
                    Get.offAllNamed('home');
                  }
                }
              },
              onFailure: (context, state) => LoadingDialog.hide(context),
              child: StepperFormBlocBuilder<TarjetaBloc>(
                type: StepperType.horizontal,
                physics: ClampingScrollPhysics(),
                stepsBuilder: (formBloc) {
                  return [
                    _personalStep(tarjeta),
                    _tarjetaStep(tarjeta),
                  ];
                },
              ),
            ),
          );
        },
      ),
    );
  }

  FormBlocStep _personalStep(TarjetaBloc bloc) {
    return FormBlocStep(
      title: Text('Datos Personales'),
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InputTextFieldBloc(
              textFieldBloc: bloc.nombreCompleto,
              labelText: "Nombre del titular",
            ),
            InputTextFieldBloc(
              textFieldBloc: bloc.correo,
              labelText: "Correo electrónico",
            ),
            InputTextFieldBloc(
              textFieldBloc: bloc.celular,
              labelText: "Número de celular",
              hintText: '741 2345 678',
              keyboardType: TextInputType.phone,
              inputFormatters: [
                MaskedTextInputFormatter(
                  mask: 'xxx xxxx xxx',
                  separator: ' ',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  FormBlocStep _tarjetaStep(TarjetaBloc bloc) {
    return FormBlocStep(
      title: Text('Pagar'),
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InputTextFieldBloc(
              textFieldBloc: bloc.cardNumber,
              labelText: "Número de tarjeta",
              hintText: 'xxxx xxxx xxxx xxxx',
              keyboardType: TextInputType.phone,
              maxLength: 19,
              counterText: '',
              maxLengthEnforced: true,
              inputFormatters: [
                MaskedTextInputFormatter(
                  mask: 'xxxx xxxx xxxx xxxx',
                  separator: ' ',
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 20.0,
                top: 5.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: InputTextFieldBloc(
                        textFieldBloc: bloc.expired,
                        maxLength: 5,
                        maxLengthEnforced: true,
                        labelText: "Fecha expiración",
                        hintText: "10/20",
                        inputFormatters: [
                          MaskedTextInputFormatter(
                            mask: 'xx/xx',
                            separator: '/',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InputTextFieldBloc(
                      textFieldBloc: bloc.cvc,
                      keyboardType: TextInputType.phone,
                      maxLength: 3,
                      maxLengthEnforced: true,
                      labelText: "CVV",
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Total a pagar 80.00",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 */