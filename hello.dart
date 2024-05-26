void main() {
  print("Hellow bro");

  dynamic data = 100;

  int dataInteger = data as int;
  bool isInt = data is int;
  bool isNotInt = data is! int;

  print(dataInteger);
  print(isInt);
  print(isNotInt);

  List<String> names = [];
  names.add("Uda");
  names.add("Putera");

  print(names); // [Uda, Putera]
  print(names.length); // 2

  names[0] = "Rizjami";
  print(names); // [Rizjami, Putera]

  var names1 = ["Uda", "Putera"];
  var names2 = <String>["Uda", "Putera"];
  List<String> names3 = ["Uda", "Putera"];
  print(names1);
  print(names2);
  print(names3);

  Set<String> _names = {"Uda", "Putera"};
  print(_names.length);
  _names.add("Muhammad");
  _names.add("Muhammad");
  print(_names);
  _names.remove("Muhammad");
  _names.remove("Muhammad");
  print(_names);

  Map<String, String> person = {};
  person["firstName"] = "Uda";
  person["lastName"] = "Putera";

  print(person);
  person.remove("lastName");
  print(person);
  print(person["firstName"]);

  var person1 = <String, String>{"firstName": "Uda", "lastName": "Putera"};
  var person2 = {"firstName": "Uda", "lastName": "Putera"};

  print(person1);
  print(person2);

  Symbol uda1 = Symbol("Uda Putera");
  var uda2 = #Uda;

  print(uda1);
  print(uda2);

  int? dataInt;
  double? dataDouble = dataInt?.toDouble();

  print(dataInt);
  print(dataDouble);

  void sayHello(String firstname,
      [String middleName = "", String lastName = ""]) {
    print("$firstname $middleName $lastName");
  }

  sayHello("Uda");

  void sayHello2({required String firstName, String? lastName}) {
    print("$firstName $lastName");
  }

  sayHello2(firstName: "Uda");
  sayHello2(firstName: "Uda", lastName: "James");

  int sum(int first, int second) => first + second;

  print(sum(10, 10)); // 20
  print(sum(10, 30)); // 40

  void sayHello3(String name, String Function(String) filter) {
    var filteredName = filter(name);
    print("Hello $filteredName");
  }

  String filteredBadWords(String name) {
    if (name == "asu") {
      return "...";
    }
    return name;
  }

  sayHello3("asu", filteredBadWords);

  var upperFunction = (String name) {
    return name.toUpperCase();
  };

// or
  var upperFunction2 = (String name) => name.toUpperCase();

  print(upperFunction("Putera"));
  print(upperFunction2("Putera"));

  void helloWithFormat(String name, String Function(String) filter) {
    var filteredName = filter(name);
    print("Hi $filteredName");
  }

  helloWithFormat("Uda", (name) {
    return name.toUpperCase();
  });

  helloWithFormat("Putera", (String name) => name.toLowerCase());
}
