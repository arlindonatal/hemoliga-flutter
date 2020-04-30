import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'gender.dart';
import 'state_address.dart';
import 'user_type.dart';

class User extends Equatable {

  final int id;
  final String name;
  final String email;
  final String password;
  final Gender gender;
  final StateAddress state;
  final DateTime lastDonation;
  final DateTime created;
  final bool active;
  final UserType userType;
  final String phone;

  User({
    @required this.id,
    @required this.name,
    @required this.email,
    @required this.password,
    @required this.gender,
    @required this.state,
    this.lastDonation,
    this.created,
    this.active,
    @required this.userType,
    this.phone
  });

  @override
  List<Object> get props => [id, email];
}