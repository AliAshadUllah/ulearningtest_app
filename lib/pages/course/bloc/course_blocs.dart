import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearningtest_app/pages/course/bloc/course_events.dart';
import 'package:ulearningtest_app/pages/course/bloc/course_states.dart';

class CourseBloc extends Bloc<CourseEvents, CourseStates>{
  CourseBloc():super(const CourseStates()){
    on<TriggerCourse>(_triggerCourse);
  }
  void _triggerCourse(TriggerCourse event, Emitter<CourseStates>emit){
    emit(state.copyWith(courseItem: event.courseItem));
  }
}