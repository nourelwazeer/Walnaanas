import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walnaanas/data/models/doctor_model.dart';

import '../../../domain/main_layout/main_cubit.dart';
import '../../../domain/main_layout/main_state.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
        builder: (context, state) {
          var doctorsList = MainCubit.get(context).doctors;
          return Scaffold(
            appBar: AppBar(
              title: const Text('الاطباء'),
              backgroundColor: Colors.teal,
            ),
            body: ConditionalBuilder(
                condition: doctorsList.isNotEmpty,
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return buildDoctorItem(doctorsList[index]);
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 2,
                                );
                              },
                              itemCount: doctorsList.length),
                        ),
                      ],
                    ),
                  );
                },
                fallback: (context) => const Center(
                      child: CircularProgressIndicator(),
                    )),
          );
        },
        listener: (context, state) {});
  }

  Widget buildDoctorItem(DoctorModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 5.0,
          margin: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(model.image!),
                      radius: 35,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('${model.name}',
                        style: TextStyle(
                            color: Colors.teal.shade800,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1.3)),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'العنوان : ',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        model.address != null
                            ? Text('${model.address}',
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))
                            : const Text('للأسف لا يتوافر لدينا عنوان',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('رقم الهاتف : ',
                            textAlign: TextAlign.start,
                            style:  TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                        Text('${model.phone}',
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
