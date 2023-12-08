
abstract class Role {
  void displayRole();
}
class Person implements Role {

  String name;
  int age;
  String address;
  Role role;

  Person(this.name, this.age, this.address, this.role);

  String getName() => name;
  int getAge() => age;
  String getAddress() => address;

  @override
  void displayRole() {
    print("Role information:");
    role.displayRole();
  }
}
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught = [];

  Teacher(String name, int age, String address, this.teacherID)
      : super(name, age, address, RoleTeacher());

  @override
  void displayRole() {
    print("Role: Teacher");
  }
  void displayCoursesTaught() {
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}
class RoleTeacher implements Role {
  @override
  void displayRole() {
    print("I am a Teacher");
  }
}

void main() {
  
  var teacher = Teacher("Jane Smith", 30, "456 Avenue", "T98765");
  teacher.displayRole();
  teacher.coursesTaught = ["Mathematics", "Physics", "Computer Science"];
  teacher.displayCoursesTaught();
}
