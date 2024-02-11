void main() {
  runStudentTask();
}

void runStudentTask() {
  Student studentOne = Student('Abdul Moiz', '123', ['math', 'computer']);
  studentOne.addCourse('eng');
  studentOne.dropCourse('computer');
  studentOne.displayCourses();

  Student studentTwo =
      Student('Abdul Moiz', '123', ['PST', 'computer', 'chemistry']);
  studentTwo.addCourse('math');
  studentTwo.dropCourse('computer');
  studentTwo.displayCourses();
}

class Student {
  String name;
  String id;
  List<String> courses;

  Student(this.name, this.id, this.courses);

  void addCourse(String course) {
    courses.add(course);
  }

  void dropCourse(String course) {
    courses.remove(course);
  }

  void displayCourses() {
    print("Available Courses: $courses");
  }
}
