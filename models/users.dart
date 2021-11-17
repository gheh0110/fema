class UserProfile {
  late String firstName;
  late String lastName;
  late String emailId;
  late String phoneNumber;
  late String address;


  UserProfile(
     this.firstName, 
     this.lastName, 
     this.emailId,
     this.phoneNumber, 
     this.address, 

  );
  UserProfile.fromMap(Map map) {
    firstName = map[firstName];
    lastName = map[lastName];
    emailId = map[emailId];
    phoneNumber = map[phoneNumber];
    address = map[address];

  }
}


class Userdata{
  late String gender;
  late String birthdate;
  late String height;
  late String weight;
  late String goal;
  late String workout_per_week;
  late String how_many_weeks;
  late String meal_plan;
  late String meal_category;
  Userdata(
     this.gender, 
     this.birthdate, 
     this.height, 
     this.weight, 
     this.goal,
     this.workout_per_week,
     this.meal_plan,
     this.how_many_weeks,
     this.meal_category,
  );
  Userdata.fromMap(Map map) {
    gender= map[gender];
    birthdate=map[birthdate];
    height=map[height];
    weight=map[weight];
    goal=map[goal];
    workout_per_week=map[workout_per_week];
    how_many_weeks=map[how_many_weeks];
    meal_plan=map[meal_plan];
    meal_category=map[meal_category];
  }
}
