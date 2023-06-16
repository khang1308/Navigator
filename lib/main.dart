import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Training',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Vel et voluptatibus .'),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                child: Row(
                  children: [
                    Container(child: Text('Detail')),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      child: Container(
                        child: Row(
                          children: [Icon(Icons.arrow_forward_outlined)],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondRoute()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 214, 77),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(65),
                    bottomLeft: Radius.circular(40))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'debitis-ipsa',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Lure est quibusdam em fugiat modi',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'et magnam hic suscippit .',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(children: [
                        Icon(Icons.access_alarms_rounded, color: Colors.white),
                        Text(
                          'ZendVn',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ]),
                    ),
                    Container(
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.settings,
                        color: Color.fromARGB(255, 241, 227, 28),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            width: double.infinity,
            height: 75,
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 245, 214, 77),
                  Color.fromARGB(255, 236, 226, 194),
                  Color.fromARGB(255, 245, 214, 77),
                ], begin: Alignment.centerRight, end: Alignment.centerLeft),
                borderRadius: BorderRadius.circular(16)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Quia voluptatum culpa',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 400.0,
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) => Bot(),
            ),
          ),
        ],
      ),
    );
  }
}

class Bot extends StatelessWidget {
  const Bot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleChildScrollView(
          child: Container(
            width: 150,
            height: 170,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 229),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 214, 77),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Assumenda velit',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Voluptates',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'exercitationem',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'animi omnis',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'expedita',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          width: 150,
          height: 170,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 240, 240, 229),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 251, 7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Text(
                        'Assumenda velit',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        'Voluptates',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        'exercitationem',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        'animi omnis',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        'expedita',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 120,
                          height: 300,
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RotatedBox(
                                quarterTurns: -1,
                                child: Text(
                                  'Welcome ZendVN',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 291,
                          height: 300,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 79, 33, 243),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(36))),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Iste autem atque ea ratione ut ex ommis non',
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(6)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Consequutur qui ea dolores votuptas voluptas pariatur.',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        'Aperiam natus soluta eum nam',
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'lure aut qui et. Ipsa animi voluptates distinctio offciis eum exercitationem',
                        style: TextStyle(fontSize: 11),
                      ),
                      Text(
                        'suscipit reiciendis. Quisquam deserunt rerum sapiente. Et porro officiis',
                        style: TextStyle(fontSize: 11),
                      ),
                      Text(
                        'consequatur hic aliquam. Molestiae aut qui quia voluptatem. Voluptates',
                        style: TextStyle(fontSize: 11),
                      ),
                      Text(
                        'placeat distinctio sunt aut.',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 400,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Aut aut debitis',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text('Aut aut debitis', style: TextStyle(fontSize: 13))
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: 380,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(40))),
                  ),
                )
              ],
            ),
            Center(
              child: Container(
                width: 50,
                height: 40,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_sharp),
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
