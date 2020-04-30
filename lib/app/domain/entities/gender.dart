import '../../core/util/enum.dart';

class Gender<String> extends Enum<String> {

  const Gender(value, label) : super(value, label);
  
  static const Gender MALE = Gender('M', 'Masculino');
  static const Gender FEMALE = Gender('F', 'Feminino');
  static const Gender OTHER = Gender('O', 'Outro');
  
  static List<Gender> getAll(){
    var list = [];
    list.add(MALE);
    list.add(FEMALE);
    return list;
  }    
  
}