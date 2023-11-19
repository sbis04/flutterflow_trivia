import 'dart:math' as math;


int generateRoomCode() {
  math.Random rdm = math.Random();
  int ranRoomCode = rdm.nextInt(9000) + 1000;
  return ranRoomCode;
}

List<String> createOptionsList(
  String option1,
  String option2,
  String option3,
  String option4,
) {
  return [option1, option2, option3, option4];
}

bool isOnlyOneChecked(
  bool checkValue1,
  bool checkValue2,
  bool checkValue3,
  bool checkValue4,
) {
  return [checkValue1, checkValue2, checkValue3, checkValue4]
          .where((val) => val == true)
          .length ==
      1;
}

int correctChoiceIndex(
  bool choiceValue1,
  bool choiceValue2,
  bool choiceValue3,
  bool choiceValue4,
) {
  return [choiceValue1, choiceValue2, choiceValue3, choiceValue4].indexOf(true);
}
