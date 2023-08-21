part of 'show_things_cubit.dart';

@immutable
sealed class ShowThingsState {}

final class ShowThingsInitial extends ShowThingsState {}

final class ShowCircle extends ShowThingsState {}

final class ShowImage extends ShowThingsState {}

final class ShowText extends ShowThingsState {}
