import 'package:flutter/material.dart';
import 'package:gym/controller/trainerscontrollar.dart';
import 'package:gym/model/TrainersModel.dart';
import 'package:sizer/sizer.dart';

class Trainers extends StatefulWidget {
  const Trainers({super.key});

  @override
  State<Trainers> createState() => _TrainersState();
}

class _TrainersState extends State<Trainers> {
  List<TrainersModel>? Trainers;
  var isLoded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    Trainers = await TrainersControlar().getTrainersModel();
    if (Trainers != null) {
      isLoded = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.separated(
          itemBuilder: (context, index) => Container(
                child: Card(
                  color: const Color.fromARGB(255, 56, 56, 56),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Boxing /n dkjdlsdksdl ',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              const Text(
                                'A charismatic and \n energetic male gym\n trainer who excels in\n creating high-intensity\n workouts.',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text("Talk to >"))
                            ],
                          )),
                      const Spacer(),
                      SizedBox(
                        width: 45.w,
                        height: 26.h,
                        child: Image.asset(
                          'img/Rectangle 48.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
          itemCount: 3),
    );
  }
}
