import 'package:flutter/material.dart';
import 'package:marker_point/src/medical_services/screens/appointment_doctor_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List symptoms = [
    'Temperature',
    'Snuffle',
    'Cough',
    'Cold',
    'Temperature',
    'Snuffle',
    'Cough',
    'Cold',
  ];

  final List _listDoctorImages = [
    'assets/images/avatar.png',
    'assets/images/doctor1.jpg',
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    // return Material(
    //   child: Container(
    //     width: MediaQuery.of(context).size.width,
    //     height: MediaQuery.of(context).size.height,
    //     padding: const EdgeInsets.all(10),
    //     color: Colors.white,
    //     child: const Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [Text('Home Page ')],
    //     ),
    //   ),
    // );
    return Material(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello Asrofun Niam',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(235, 85, 94, 218),
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/person.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(235, 126, 133, 240),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 6,
                              spreadRadius: 4)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: const Icon(
                              Icons.add,
                              color: Colors.blue,
                              size: 35,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Clinic Visit',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Mak an appointment',
                          style: TextStyle(
                            color: Color.fromARGB(255, 218, 217, 217),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(235, 85, 94, 218),
                              blurRadius: 6,
                              spreadRadius: 4)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(235, 126, 133, 240),
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 35,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Home Visit',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Call the doctor home',
                          style: TextStyle(
                            color: Color.fromARGB(255, 44, 44, 44),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'What are you alternatives ?',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 88, 88, 87)),
                ),
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: symptoms.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 4,
                                spreadRadius: 2,
                                color: Color.fromARGB(235, 126, 133, 240))
                          ]),
                      child: Center(
                        child: Text(symptoms[index]),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Best Clinic ',
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 82, 81, 81)),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: _listDoctorImages.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AppointmentDoctorScreen(
                          listDoctorImages: _listDoctorImages,
                          index: index,
                        );
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(235, 126, 133, 240),
                                blurRadius: 4,
                                spreadRadius: 2)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage(_listDoctorImages[index]),
                          ),
                          const Text(
                            'Clinic Medical Name',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 73, 73, 73)),
                          ),
                          const Text(
                            'Kanker Specialist',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 80, 79, 79)),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 80, 79, 79)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
