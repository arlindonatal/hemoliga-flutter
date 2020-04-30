import 'package:equatable/equatable.dart';

class BloodType extends Equatable {

  final int id;
  final String name;

  BloodType(this.id, this.name);

  @override
  List<Object> get props => [id];

  static List<BloodType> getAll(){
    List<BloodType> list = [];
    list.add(BloodType(1, 'A+'));
    list.add(BloodType(2, 'A-'));
    list.add(BloodType(3, 'B+'));
    list.add(BloodType(4, 'B-'));
    list.add(BloodType(5, 'O+'));
    list.add(BloodType(6, 'O-'));
    list.add(BloodType(7, 'AB+'));
    list.add(BloodType(8, 'AB-'));
    return list;
  }  

}