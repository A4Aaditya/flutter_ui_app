class Animal {
  final String? animalName;
  final String? animalColor;
  final String? animalLeg;
  // positional
  // required
  // required positional
// Positional
  // Animal(this.animalColor, this.animalLeg, this.animalName);

  // Required
  // Animal({
  //   required this.animalColor,
  //   required this.animalLeg,
  //   required this.animalName,
  // });
  // Optional

  Animal([
    this.animalColor = "Default Color",
    this.animalLeg = "Default Leg",
    this.animalName = "Default Name",
  ]);
}
