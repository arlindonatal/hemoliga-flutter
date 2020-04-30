import 'package:equatable/equatable.dart';

class StateAddress extends Equatable {

  final int id;
  final String name;
  final String initial;

  StateAddress(this.id, this.name, this.initial);

  @override
  List<Object> get props => [id];

  static List<StateAddress> getAll(){
    var list = [];
    list.add(StateAddress(1, 'Acre', 'AC'));
    list.add(StateAddress(2, 'Alagoas', 'AL'));
    list.add(StateAddress(3, 'Amapá', 'AP'));
    list.add(StateAddress(4, 'Amazonas', 'AM'));
    list.add(StateAddress(5, 'Bahia', 'BA'));
    list.add(StateAddress(6, 'Ceará', 'CE'));
    list.add(StateAddress(7, 'Distrito Federal', 'DF'));
    list.add(StateAddress(8, 'Espírito Santo', 'ES'));
    list.add(StateAddress(9, 'Goiás', 'GO'));
    list.add(StateAddress(10, 'Maranhão', 'MA'));
    list.add(StateAddress(11, 'Mato Grosso', 'MT'));
    list.add(StateAddress(12, 'Mato Grosso do Sul', 'MS'));
    list.add(StateAddress(13, 'Minas Gerais', 'MG'));
    list.add(StateAddress(14, 'Pará', 'PA'));
    list.add(StateAddress(15, 'Paraíba', 'PB'));
    list.add(StateAddress(16, 'Paraná', 'PR'));
    list.add(StateAddress(17, 'Pernambuco', 'PE'));
    list.add(StateAddress(18, 'Piauí', 'PI'));
    list.add(StateAddress(19, 'Rio de Janeiro', 'RJ'));
    list.add(StateAddress(20, 'Rio Grande do Norte', 'RN'));
    list.add(StateAddress(21, 'Rio Grande do Sul', 'RS'));
    list.add(StateAddress(22, 'Rondônia', 'RO'));
    list.add(StateAddress(23, 'Roraima', 'RR'));
    list.add(StateAddress(24, 'Santa Catarina', 'SC'));
    list.add(StateAddress(25, 'São Paulo', 'SP'));
    list.add(StateAddress(26, 'Sergipe', 'SE'));
    list.add(StateAddress(27, 'Tocantins', 'TO'));
    return list;
  }      
}