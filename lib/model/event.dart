class Event {
  final String imagePath, title, description, location, duration, punchLine1, punchLine2;
  final List categoryIds, galleryImages;

  Event(
      {required this.imagePath,
        required this.title,
        required this.description,
        required this.location,
        required this.duration,
        required this.punchLine1,
        required this.punchLine2,
        required this.categoryIds,
        required this.galleryImages});
}

final fiveKmRunEvent = Event(
    imagePath: "lib/images/food6.jpg",
    title: "5 Kilometer Downtown Run",
    description: "",
    location: "Pleasant Park",
    duration: "3h",
    punchLine1: "Marathon!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: [],
    categoryIds: [0, 1]);

final cookingEvent = Event(
    imagePath: "lib/images/food2.jpg",
    title: "Granite Cooking Class",
    description: "Guest list fill up fast so be sure to apply before handto secure a spot.",
    location: "Food Court Avenue",
    duration: "4h",
    punchLine1: "Granite Cooking",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    categoryIds: [0, 2],
    galleryImages: ["lib/images/m1.jpg","lib/images/w1.jpg","lib/images/m2.jpg","lib/images/w3.jpg","lib/images/w4.jpg","lib/images/w5.jpg"]
);

final musicConcert = Event(
    imagePath: "lib/images/food3.jpg",
    title: "Arijit Music Concert",
    description: "Listen to Arijit's latest compositions.",
    location: "D.Y. Patil Stadium, Mumbai",
    duration: "5h",
    punchLine1: "Music Lovers!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: ["lib/images/m1.jpg","lib/images/w1.jpg","lib/images/m2.jpg","lib/images/w3.jpg","lib/images/w4.jpg","lib/images/w5.jpg"],
    categoryIds: [0, 1]);

final golfCompetition = Event(
    imagePath: "lib/images/food3.jpg",
    title: "Season 2 Golf Estate",
    description: "",
    location: "NSIC Ground, Okhla",
    duration: "1d",
    punchLine1: "Golf!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: ["lib/images/m1.jpg","lib/images/w1.jpg","lib/images/m2.jpg","lib/images/w3.jpg","lib/images/w4.jpg","lib/images/w5.jpg"],
    categoryIds: [0, 3]);

final events = [
  fiveKmRunEvent,
  cookingEvent,
  musicConcert,
  golfCompetition,
];