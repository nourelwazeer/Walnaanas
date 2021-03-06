import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walnaanas/domain/register_cubit/register_cubit.dart';
import 'package:walnaanas/domain/register_cubit/register_state.dart';
import 'package:walnaanas/presentation/Screens/HomeScreen.dart';
import 'package:walnaanas/presentation/Screens/login_screen/login_screen.dart';

import '../../Widgets/components.dart';

class RegisterScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit , RegisterState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.teal,
                title: Text('تسجيل الدخول'),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50),
                          child: Image.asset(
                            'assets/images/Login2.png',
                            height: 180,
                          ),
                        ),
                      ],
                    ),
                    Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                            children: [
                              const SizedBox(height: 15),
                              TextFormField(
                                validator: (String? value){
                                  if(value!.isEmpty){
                                    return 'من فضلك ادخل الاسم' ;
                                  }else {
                                    return null;
                                  }
                                },
                                controller: nameController,
                                decoration:  InputDecoration(
                                  prefixIcon: Icon(Icons.person,color: Colors.teal,),
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  labelText: 'اسم المستخدم',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Colors.teal,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              TextFormField(
                                validator: (String? value){
                                  if(value!.isEmpty){
                                    return 'من فضلك ادخل البريد' ;
                                  }else {
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
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  prefixIcon: Icon(
                                    Icons.email,color: Colors.teal
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
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
                                obscureText: RegisterCubit.get(context).isVisible,
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
                                  suffixIcon: IconButton(onPressed: (){RegisterCubit.get(context).passwordVisible();}, icon: RegisterCubit.get(context).suffix),
                                ),
                              ),
                              const SizedBox(height: 15),
                              ConditionalBuilder(
                                  condition: state is! UserRegisterLoadingState,
                                  builder: (context)=>SizedBox(
                                    width: double.infinity,
                                    // color: Color(0xFF00695C),
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
                                            RegisterCubit.get(context).userRegister(
                                                email: emailController.text,
                                                password: passwordController.text,
                                                name: nameController.text);
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
                                  fallback: (context) => Center(child: CircularProgressIndicator(color: Colors.teal,),)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(' لديك حساب..؟ ',style: TextStyle(color: Colors.black ,fontSize: 20,fontWeight: FontWeight.bold)),
                                  InkWell(
                                      onTap: (){
                                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>  LoginScreen()), (route) => false);
                                      },
                                      child: const Text(' سجل الدخول',style: TextStyle(color: Colors.teal,fontSize: 15,fontWeight: FontWeight.bold),))
                                ],
                              )
                            ]
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          listener: (context, state){
            if(state is UserRegisterErrorState){
              showToast(msg:state.error.toString(),backColor: Colors.red, txtColor: Colors.white);
            }
            if(state is UserCreateSuccessState){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false);
            }
          }),
    );
  }
}