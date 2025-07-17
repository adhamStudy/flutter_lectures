//
// void main() {
// // datatypes
// int x=2;
// double y=10;
// String name='Ali';
// bool toggle=false;
// dynamic data = 10;
// data= 'mohammed';
// // print(data);
//
// // Lists and Maps
// print('============================================== Lists and Maps');
// List <String > names = ['Ahmed','Mohammed','Ali'];
//
// Map <dynamic,dynamic> student = {
//   "id":1234,
//   "name":'mohammed',
//   "email":'mohammed@gmail.com',
// };
//
// // Nested Map
//
// Map studentsGrades={
//
//   'data':[
//     {
//       'id':1,
//       'name':'mohammed',
//       'grade':'A'
//     },
//     {
//       'id':2,
//       'name':'Adhmed',
//       'grade':'A+'
//     },
//     {
//       'id':3,
//       'name':'Ali',
//       'grade':'B+'
//     },
//   ]
//
// };
//
// // print(studentsGrades['data'][0]['grade']);
//
// List <Map> students= studentsGrades['data'];
//
//
// // using for
// for (var student in students){
//   print(' Student Name : ${student['name']} , Grade is ${student['grade']} ');
// }
// // using foreach
// // students.forEach((element){
// //   print(' Student Name : ${element['name']} , Grade is ${element['grade']} ');
// // },);
//
// }

// functions in Dart
// 1 Named functions

// void main(){
//
//   // int result = await sum(2, 5);
//   // print(result);
// }
// Asynchronous functions
// sum(int a,int b) async{
//   print('loading...');
//   await Future.delayed(Duration(seconds: 3));
//   return a+b;
// }

// void sayHello(){
//   print('Hello ');
// }
// // 2 Anonymous functions
// var sayHi = (){
//   print('Hi');
// };
//
// // 3 return functions
// int sum(int a,int b){
//   return a+b;
// }
// // 4 Arrow functions
// var sum2 = (int a,int b) => a+b;
//
//
//

import 'package:flutter_lectures/BankAccount.dart';

void main(){
BankAccount user1=new BankAccount(1000);
user1.deposit(200);
int userBalance=user1.getBalance();
print('user balance is ${userBalance}');
user1.withDraw(500);
userBalance=user1.getBalance();
print('user balance is ${userBalance}');



}

// Null Safety
// int ?x;
// x=10;
//
// if (x!=null){
// int y = x+5;
// print(x);
// }