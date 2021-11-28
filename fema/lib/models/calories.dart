class Calories {
   late String cal_id;
   late String category;
   late String sub_cat;
   late String title;
   late String cal;
   late String alarm;
   late String added_on;

  Calories(this.cal_id, this.category, this.sub_cat, this.title, this.cal, this.alarm, this.added_on);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'cal_id': cal_id,
      'category': category,
      'sub_cat': sub_cat,
      'title': title,
      'cal': cal,
      'alarm':alarm,
      'added_on':added_on,
    };
    return map;
  }

  Calories.fromMap(Map<String, dynamic> map) {
    cal_id = map['cal_id'];
    category = map['category'];
    sub_cat = map['sub_cat'];
    title = map['title'];
    cal = map['cal'];
    alarm = map['alarm'];
    added_on = map['added_on'];
  }
}