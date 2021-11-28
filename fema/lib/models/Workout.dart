
// ignore_for_file: file_names

class Breakfast {
  final int id, time, serving;
  final String title, description, calories, category;
  final List <String> procedure;
  final List <String> ingredients;
  final List <String> naturalFacts;
  final List<String> images;
  final double rating;
  bool isFavorite, isPopular;

  Breakfast({
    required this.id,
    required this.images,
    this.rating = 0.0,
    this.isFavorite = false,
    this.isPopular = false,
    required this.title,
    required this.time,
    required this.description,
    required this.ingredients,
    required this.procedure,
    required this.naturalFacts,
    required this.calories,
    required this.serving,
    required this.category,
  });
}

// Our demo Products

List<Breakfast> dataOfBreakfast = [
  Breakfast(
    id: 1,
    images: [
        "assets/images/cilantro.png",
    ],
    title: "Upper Body Exercises",
    time: 15,
    description: "Sliced bread is the perfect blank canvas, ready to be loaded up with virtuous ingredients.",
    rating: 4.8,
    category: "Upper Body Exercises",
    serving: 1,
    ingredients: [
        " ¼ cup packed cilantro",
        " 1 cup packed kale leaves",
        " ¼ cup extra-virgin olive oil",
        " 1 tablespoon white balsamic vinegar",
        " 2 tablespoons hulled hemp seeds*",
        " salt",
        " Freshly ground pepper",
        " 1 large slice of whole-wheat toast",
        " 2 tablespoons unflavored whole-milk Greek yogurt",
        " 1 fried egg",
    ],
    procedure: [
        ". Whirl the cilantro, kale leaves, extra-virgin olive oil, white balsamic vinegar, and hemp seeds* until fairly smooth, scraping inside of bowl.",
        ". Season with sea salt and freshly ground pepper. ",
        ". Smear a large slice of whole-wheat toast with the yogurt, then with some pesto. ",
        ". Top with a fried egg and more salt and pepper.",
    ], 
    calories: '139', 
    naturalFacts: [
     " 405 calories",
     " protein 15g",
     " fat 31g",
     " saturated fat 5.8g",
     " carbohydrates 16g",
     " fiber 1.9g",
     " sodium 331mg",
     " cholesterol 189mg",
   ],
  ),

];
