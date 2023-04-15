import 'package:Centre/modules/archived/archived.dart';
import 'package:Centre/modules/done/done.dart';
import 'package:Centre/modules/new_tasks/tasks.dart';
import 'package:flutter/material.dart';

class home_layout extends StatefulWidget {
  const home_layout({Key? key}) : super(key: key);

  @override
  State<home_layout> createState() => _home_layoutState();
}

class _home_layoutState extends State<home_layout> {
  int currentindex=0;
  List<Widget> screens = [
    tasks(),
    done(),
    archived(),
  ] ;

  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            titles[currentindex]
        ),
      ),
      body: screens[currentindex],
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {
          // try {
          //   var name =await getName();
          //   print(name);
          //   throw ('some error !');
          // }catch (error){
          //   print('error${error.toString()}');
          //
          // }
          getName('wala ').then((value){
            print(value);
            print('loula tahfouna');
          }).catchError((error){
                print('error ${error.toString()}');
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (index){
          setState(() {
            currentindex=index;
          });
        },
        items:
        [
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.check_circle_outline),label: 'Done'),
          BottomNavigationBarItem(icon: Icon(Icons.archive_outlined),label: 'Archive'),
        ],

      ),
    );
  }
  Future <String> getName(name) async {
    return name;
  }
}
