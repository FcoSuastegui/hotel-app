import 'package:clubimperial/src/blocs/login_bloc.dart';
import 'package:clubimperial/src/widgets/Alerts/custom_alert.dart';
import 'package:clubimperial/src/widgets/Buttons/button_submit.dart';
import 'package:clubimperial/src/widgets/Fields/input_text_field_bloc.dart';
import 'package:clubimperial/src/widgets/Loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  static final String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      child: Container(
                        height: 250.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/login.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                BlocProvider(
                  create: (context) => LoginFormBloc(),
                  child: Builder(
                    builder: (context) {
                      final login = context.bloc<LoginFormBloc>();
                      return FormBlocListener<LoginFormBloc, String, String>(
                        onSubmitting: (context, state) =>
                            LoadingDialog.show(context),
                        onSuccess: (context, state) {
                          LoadingDialog.hide(context);
                          login.close();
                          Get.offAllNamed('/home');
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
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            margin: EdgeInsets.only(top: 25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    "Iniciar sesión",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25.0,
                                      fontFamily: 'BebasNeue',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                InputTextFieldBloc(
                                  textFieldBloc: login.email,
                                  labelText: "Correo electrónico *",
                                  labelStyle: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 15.0,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                InputTextFieldBloc(
                                  textFieldBloc: login.password,
                                  suffixButton: SuffixButton.obscureText,
                                  labelText: "Contraseña *",
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
                                  submit: login.submit,
                                  text: 'Ingresar',
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
