class Todo {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Todo(this._title, this._date, this._priority, [this._description]);
  Todo.withId(this._id, this._title, this._date, this._priority,
      [this._description]);

  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;

  set title(String title) {
    if (title.length <= 255) {
      _title = title;
    }
  }

  set description(String description) {
    if (description.length <= 255) {
      _description = description;
    }
  }

  set priority(int priority) {
    if (priority > 0 && priority <= 3) {
      _priority = priority;
    }
  }

  set date(String date) {
    _date = date;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["title"] = _title;
    map["description"] = _description;
    map["priority"] = _priority;
    map["date"] = _date;
    if (_id != null) {
      map["id"] = _id;
    }
    return map;
  }

  Todo.fromObject(dynamic o) {
    this._id = o["id"];
    this._title = o["title"];
    this._description = o["description"];
    this._priority = o["priority"];
    this._date = o["date"];
  }
}
