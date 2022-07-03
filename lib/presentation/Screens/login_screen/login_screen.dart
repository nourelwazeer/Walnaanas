import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walnaanas/domain/login_cubit/login_cubit.dart';
import 'package:walnaanas/presentation/Screens/register/register_screen.dart';

import '../../../data/local/cash_helper.dart';
import '../../../domain/login_cubit/login_state.dart';
import '../../Widgets/components.dart';
import '../HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit , LoginState>(
          builder: (context, state){
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                title: Text('التسجيل '),
                backgroundColor: Colors.teal,
              ),
                body: SingleChildScrollView(
                    child: Column(children: [
                      Stack(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(50),
                                child: Image.asset(
                                  'assets/images/Login.png',
                                  height: 200,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Form(
                          key: formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextFormField(
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'من فضلك ادخل البريد';
                                  } else {
                                    return null;
                                  }
                                },
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Colors.teal,
                                    ),
                                  ),
                                  labelText: 'البريد الاكترونى ',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  prefixIcon: Icon(Icons.email, color: Colors.teal),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                controller: passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                validator: (String? value){
                                  if(value!.isEmpty){
                                    return 'كلمة المرور قصيرة' ;
                                  }else {
                                    return null;
                                  }
                                },
                                obscureText: LoginCubit.get(context).isVisible,
                                decoration:  InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Colors.teal,
                                    ),
                                  ),
                                  labelText: 'كلمة المرور' ,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  prefixIcon:  Icon(
                                      Icons.lock,color: Colors.teal
                                  ),
                                  suffixIcon: IconButton(onPressed: (){
                                    LoginCubit.get(context).passwordVisible();
                                  }, icon: LoginCubit.get(context).suffix,),
                                ),
                              ),
                              const SizedBox(height: 30),
                              ConditionalBuilder(
                                  condition:  state is! UserLoginLoadingState ,
                                  builder: (context)=>SizedBox(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(18.0),
                                                  side: const BorderSide(color: Colors.teal)
                                              )
                                          ),
                                          backgroundColor: MaterialStateProperty.all(Colors.teal),
                                          foregroundColor: MaterialStateProperty.all(Colors.white),
                                        ),
                                        onPressed: () {
                                          if(formKey.currentState!.validate()){
                                            LoginCubit.get(context).userLogin(
                                                email: emailController.text,
                                                password: passwordController.text
                                            );
                                          }
                                        },
                                        child: const Text(
                                          'تسجيل',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20 ,

                                          )
                                          ,
                                        ),
                                      ),
                                    ),
                                  ),
                                  fallback: (context) => const Center(child: CircularProgressIndicator(color: Colors.teal,),)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('ليس لديك حساب..؟ ',style: TextStyle(color: Colors.black ,fontSize: 20,fontWeight: FontWeight.bold)),
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                                    },
                                      child: const Text(' سجل من هنا',style: TextStyle(color: Colors.teal,fontSize: 15,fontWeight: FontWeight.bold),))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ])));
          },
          listener: (context, state){
            if(state is UserLoginErrorState){
              showToast(msg:state.error.toString(),backColor: Colors.red, txtColor: Colors.white);
            }
            if(state is UserLoginSuccessState){
              CashHelper.saveData(key: 'uId', value: state.value).then((value) {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false);
              });
            }
          }),
    );
  }
}
