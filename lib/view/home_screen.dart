import 'package:flutter/material.dart';
import 'package:my_ritual/model/data_model.dart';
import 'package:my_ritual/repository/data_repository.dart';
import 'package:my_ritual/view/sample_page.dart';

class Model {
  // 멤버 변수 / 선언만 해놓은 상태 null
  // final 한번 값을 할당 하면 재할당 할 수 없다.
  /** 멤버 변수를 변경할 수 있는 방법
   * 1. 클래스 내에서, 2. 컨스트럭터를 통해서
   *
   */
  // 초기화를 하는 것과 아무것도 하지 않는 것은 다르다.
  // final String? tmp = null; // null 로 초기
  // final String? tmp; // 초기화가 안 됨.
  // final의 의도 : 한번 초기화 된 값으로 바꾸지 않고 쭉 가겠다.
  // 멤버의 스콥 / 로컬의 스콥
  // 로컬에서는 첫번째 할당을 초기화라고 여긴다.
  // 멤버변수의 특징은 반드시 공간을 차지해야 한다. 늘어나도 얼만큼 늘어나야 하는지 알아야 하기 때문이다.
  // 컴파일러가 알고 있는 것과 모르는 것.

  // 컴파일 타임 / 런 타임에서 무슨 일이 일어나는지!

  void setTmp() {
    final int a;
    // a = 1;
    print('hello world');
  }

  final String tmp;
  Model({required this.tmp});
}

// 멤버변수는 객체에 포함되어 있고, 메소드는 class에 포한되어 있다.
// 유저가 컨트롤할 수 있는 영역, 할 수 없는 영역.
Model a = Model(tmp: 'a');
Model b = Model(tmp: 'a');
Model c = Model(tmp: 'a');
Model d = Model(tmp: 'a');

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // class
  // 멤버변수
  // final

  @override
  Widget build(BuildContext context) {
    const TS = TextStyle();

    Future<List<DataModel>> getData() async {
      final data = await DataRepository.fetchData();
      return data;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<DataModel>>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('에러 발생!'),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final data = snapshot.data;
          return SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('asset/images/sample.jpeg'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SamplePage()));
                  },
                  child: Text('MOVE'),
                ),
                Text(
                  'Hello Wolrd',
                  style: TS.copyWith(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                ...data!.map((e) => Text(e.id)).toList(),
              ],
            ),
          );
        },
      ),
    );
  }
}
