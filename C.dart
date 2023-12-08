
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
class Student extends Person {
  String studentID;
  String grade;
  List<int> courseScores = [];

  Student(String name, int age, String address, this.studentID, this.grade)
      : super(name, age, address, RoleStudent());

  @override
  void displayRole() {
    print("Role: Student");
  }
  double calculateAverageScore() {
    if (courseScores.isEmpty) {
      return 0.0; 
    }
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }
}
class RoleStudent implements Role {
  @override
  void displayRole() {
    print("I am a Student");
  }
}

void main() {
  var student = Student("John Doe", 20, "123 Street", "S12345", "A");

  student.displayRole();
  student.courseScores = [85, 90, 78, 92, 88];
  var averageScore = student.calculateAverageScore();
  print("Average Score: $averageScore");
}
