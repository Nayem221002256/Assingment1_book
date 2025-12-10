class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

// Manager subclass
class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  void displayInfo() {
    print("\n--- Manager Details ---");
    print("Name: $name");
    print("Salary: $salary");
    print("Department: $department");
  }
}

// Developer subclass
class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  void displayInfo() {
    print("\n--- Developer Details ---");
    print("Name: $name");
    print("Salary: $salary");
    print("Programming Language: $programmingLanguage");
  }
}

void main() {
  Manager m = Manager("Kamrul Hasan", 80000, "Sales");
  Developer d = Developer("Mahabub Tamim", 60000, "Flutter");

  m.displayInfo();
  d.displayInfo();
}
