import 'dart:convert';

List<University> universityListFromData(String data) => List<University>.from(jsonDecode(data).map((e) => University.fromJson(e)));

class University {
  late String courseCode;
  late String courseName;
  late int credits;
  late String department;
  late List<Instructor> instructors;
  late Schedule schedule;
  late Enrollment enrollment;
  late List<Textbook> textbooks;

  University.fromJson(Map<String, dynamic> json) {
    courseCode = json['courseCode'];
    courseName = json['courseName'];
    credits = json['credits'];
    department = json['department'];
    instructors = List<Instructor>.from(json['instructors'].map((instructor) => Instructor.fromJson(instructor)));
    schedule = Schedule.fromJson(json['schedule']);
    enrollment = Enrollment.fromJson(json['enrollment']);
    textbooks = List<Textbook>.from(json['textbooks'].map((textbook) => Textbook.fromJson(textbook)));
  }
}

class Instructor {
  late String name;
  late String office;
  late String email;

  Instructor.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    office = json['office'];
    email = json['email'];
  }
}

class Schedule {
  late List<String> days;
  late String time;

  Schedule.fromJson(Map<String, dynamic> json) {
    days = List<String>.from(json['days']);
    time = json['time'];
  }
}

class Enrollment {
  late int currentStudents;
  late int capacity;

  Enrollment.fromJson(Map<String, dynamic> json) {
    currentStudents = json['currentStudents'];
    capacity = json['capacity'];
  }
}

class Textbook {
  late String title;
  late String author;
  late String isbn;

  Textbook.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    author = json['author'];
    isbn = json['isbn'];
  }
}