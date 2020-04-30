import 'package:equatable/equatable.dart';

class UserType extends Equatable {

  final int id;
  final String name;

  UserType(this.id, this.name);

  @override
  List<Object> get props => [id];
}