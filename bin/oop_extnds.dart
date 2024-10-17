class Person {
  Person({required this.name, required this.age, required this.email});

  String name;
  int age;
  String email;
}

class Teacher extends Person {
  Teacher(
      {required super.name,
      required super.age,
      required super.email,
      required this.subjects});

  List<String> subjects;
  final List<Map<String, dynamic>> studentsMarkList = [];

  List<Map<String, dynamic>> getAllMarks() {
    return studentsMarkList;
  }

  dynamic putMark(String studentName, int studentMark, String subjectName) {
    if (subjects.contains(subjectName)) {
      studentsMarkList.add({
        'studentName': studentName,
        'mark': studentMark,
        'subject': subjectName,
      });
      return studentsMarkList;
    }
    return {'error': 'Teacher doesn\'t teach this subject'};
  }
}

void main() {
  var teacherOleksii = Teacher(
      name: 'Oleksii',
      age: 25,
      email: 'apos@gmail.com',
      subjects: ['History', 'Math', 'Physics']);

  teacherOleksii.putMark('Alex Apostolov', 12, 'Math');
  teacherOleksii.putMark('Alex Apostolov', 12, 'Math');
  teacherOleksii.putMark('John Doe', 9, 'Chemistry');

  print(teacherOleksii.getAllMarks());
}
