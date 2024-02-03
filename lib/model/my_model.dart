class SampleApi {
  String? status;
  List<Employee>? employees;

  SampleApi({
    this.status,
    this.employees,
  });

  factory SampleApi.fromJson(Map<String, dynamic> json) => SampleApi(
        status: json["status"],
        employees: json["employees"] == null
            ? []
            : List<Employee>.from(
                json["employees"]!.map((x) => Employee.fromJson(x))),
      );
}

class Employee {
  String? id;
  String? employeeName;
  String? designation;

  Employee({
    this.id,
    this.employeeName,
    this.designation,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        employeeName: json["employee_name"],
        designation: json["designation"],
      );
}
