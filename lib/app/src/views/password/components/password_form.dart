import 'package:clubimperial/app/src/views/password/bloc/password_bloc.dart';
import 'package:clubimperial/app/src/widgets/Alerts/custom_alert.dart';
import 'package:clubimperial/app/src/widgets/Buttons/button_submit.dart';
import 'package:clubimperial/app/src/widgets/Fields/input_text_field_bloc.dart';
import 'package:clubimperial/app/src/widgets/Loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:get/get.dart';

class PassWordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PassWordBloc(),
      child: Builder(
        builder: (context) {
          final password = context.bloc<PassWordBloc>();
          return FormBlocListener<PassWordBloc, String, String>(
            onSubmitting: (context, state) => LoadingDialog.show(context),
            onSuccess: (context, state) async {
              LoadingDialog.hide(context);
              await Get.dialog(
                CustomAlert(
                  type: AlertDialogType.SUCCESS,
                  text: state.successResponse,
                  action: () => Get.offAllNamed("/"),
                ),
                barrierDismissible: false,
              );
              password.close();
            },
            onFailure: (context, state) async {
              LoadingDialog.hide(context);
              await Get.dialog(
                CustomAlert(
                  type: AlertDialogType.ERROR,
                  text: state.failureResponse,
                ),
              );
            },
            child: Container(
              child: Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        top: 12.0,
                        left: 5.0,
                      ),
                      child: Text(
                        "Ingresa tu nueva contraseña",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 14,
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    InputTextFieldBloc(
                      textFieldBloc: password.password,
                      labelText: "Nueva contraseña *",
                      suffixButton: SuffixButton.obscureText,
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                        fontFamily: 'Oswald',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    InputTextFieldBloc(
                      textFieldBloc: password.confirmPassword,
                      labelText: "Repite tu contraseña *",
                      suffixButton: SuffixButton.obscureText,
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                        fontFamily: 'Oswald',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ButtonSubmit(
                      submit: password.submit,
                      text: "Cambiar",
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
