// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'info_bloc.dart';

@immutable
abstract class InfoState {}
abstract class InfoActionState extends InfoState{}

class InfoInitial extends InfoState {}

class InfoFetchingSuccessfulState extends InfoState {
  final List<InfoUiModel> infos;
  InfoFetchingSuccessfulState({
    required this.infos,
  });
}
