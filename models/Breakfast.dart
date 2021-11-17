
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
    title: "Cilantro and Kale Pesto Toast with a Fried Egg",
    time: 15,
    description: "Sliced bread is the perfect blank canvas, ready to be loaded up with virtuous ingredients.",
    rating: 4.8,
    category: "Vegetarian",
    serving: 1,
    isFavorite: true,
    isPopular: true,
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
  Breakfast(
    id: 2,
    images: [
        "assets/images/sweet_potato_and_egg.jpg",
    ],
    title: "Southwestern Sweet Potato and Egg Hash",
    time: 15,
    description: "Hashes are a great way to incorporate vegetables into the first meal of the day. Here we’ve added a Southwestern spin with chili powder and cumin. ",
    rating: 4.8,
    category: "Vegetarian",
    serving: 1,
    isFavorite: true,
    isPopular: true,
    ingredients: [
        " ¾ cup (1/2-in.) diced peeled sweet potato",
        " 2 teaspoons water",
        " 1 ½ teaspoons olive oil, divided",
        " ⅔ cup chopped red bell pepper",
        " ¼ teaspoon chili powder",
        " ⅛ teaspoon kosher salt",
        " ⅛ teaspoon ground cumin",
        " ¼ cup unsalted canned black beans, rinsed and drained",
        " 1 large egg",
        " 2 tablespoons Green Goddess Avocado Sauce",
        "1 tablespoon chopped fresh cilantro",
    ],
    procedure: [
        ". Place potatoes and 2 teaspoons water in a microwave-safe dish; cover with plastic wrap. Microwave at high until tender, about 4 minutes. Place potatoes on a paper towel–lined plate. Let stand 5 minutes.",
        ". Heat 1 teaspoon oil in a cast-iron skillet over medium-high. Add potatoes, bell pepper, chili powder, salt, and cumin; cook until potatoes are crisp, 6 to 8 minutes. Stir in black beans; transfer to a plate.",
        ". Reduce heat to medium. Add remaining 1/2 teaspoon oil to pan. Crack egg into pan; cook until whites are set, 3 to 4 minutes. Place egg on potato mixture. Top with Green Goddess Sauce and cilantro. ",

    ], 
    calories: '397 ', 
    naturalFacts: [
     " 397  calories",
     " protein 13g",
     " fat 21g",
     " saturated fat 4g",
     " carbohydrates 38g",
     " fiber 10g",
     " sodium 331mg",
     " cholesterol 189mg",
     " sugar 9g",
     " 563mg",
   ],
  ),
  Breakfast(
    id: 3,
    images: [
        "assets/images/mini_pizzas.jpg",
    ],
    title: "Mini Breakfast Pizzas",
    time: 60,
    description: "This mini breakfast pizza is glorious: A pizza and salad combo that makes for a delicious weekend breakfast or brunch but also works nicely as a dinner.",
    rating: 4.8,
    serving: 4,
    category: "Vegetarian",
    isFavorite: true,
    isPopular: true,
    ingredients: [
        " 12 ounces whole-wheat pizza dough",
        " 1 cup part-skim ricotta cheese",
        " 1 ¼ teaspoons lemon zest",
        " ¼ teaspoon kosher salt, divided",
        " ¼ teaspoon ground pepper, divided",
        " 4 large eggs",
        " 1 ounce Parmesan cheese, grated (about 1/4 cup)",
        " 2 teaspoons extra-virgin olive oil",
        " 2 teaspoons fresh lemon juice",
        " 1 fried egg",
        " 4 cups packed baby arugula",
    ],
    procedure: [
        ". Place a pizza stone or large baking sheet in oven; preheat to 450°F (leave stone in oven as it preheats).",
        ". Let dough stand at room temperature for 30 minutes. Divide dough into 4 pieces. ",
        ". On a lightly floured surface, roll each piece of dough into a 7-inch circle. Pierce liberally with a fork.. ",
        ". Arrange 2 dough circles on hot pizza stone. Bake at 450°F for 3 minutes. Remove from oven, and flip so cooked side is up. Set aside. Repeat with remaining 2 dough circles.",
        ". Stir together ricotta cheese and zest in a medium bowl. Divide ricotta mixture evenly among cooked sides of dough circles; sprinkle evenly with 1/8 teaspoon salt and 1/8 teaspoon pepper. Top each dough circle with 1 egg and 1 tablespoon Parmesan.",
        ". Working in 2 batches, return topped dough circles to pizza stone. Bake at 450°F until egg whites are set and yolks are still a little runny, about 6 to 8 minutes.",
        ". Whisk together oil, juice, remaining 1/8 teaspoon salt, and remaining 1/8 teaspoon pepper in a large bowl. Stir in arugula.",
        ". Top each cooked pizza with 1 cup dressed arugula.",
    ], 
    calories: '386', 
    naturalFacts: [
     " 386 calories",
     " protein 21g",
     " fat 16g",
     " saturated fat 6g",
     " carbohydrates 42g",
     " fiber 3g",
     " sodium 711mg",
     " cholesterol 189mg",
     " sugar 1g",
   ],
  ),

];
