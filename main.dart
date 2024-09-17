import 'dart:io';
import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'models/recipe.dart';
import 'models/user.dart';
import 'user_registrierung.dart';
import 'recipe_manager.dart';

void main() {
  DatabaseRepository mockdatabase = MockDatabase();

  List<Recipe> initialRecipes = mockdatabase.getAllRecipes();
  print(initialRecipes);
  mockdatabase.addRecipe(Recipe(
    title: 'Pasta Bolognese',
    ingredients: [
      '300g Rinderhackfleisch',
      '1 Zwiebel',
      '1 Dose (400g) Tomaten',
      '200g Spaghetti',
      'Olivenöl',
      'Salz und Pfeffer'
    ],
    preparation: '''
      1. Zwiebel hacken und in Olivenöl anbraten.
      2. Hackfleisch hinzufügen und braten, bis es durch ist.
      3. Tomaten hinzufügen und mit Salz und Pfeffer würzen. 20 Minuten köcheln lassen.
      4. Spaghetti nach Packungsanweisung kochen und mit der Sauce servieren.
    ''',
  ));
  List<Recipe> allRecipes = mockdatabase.getAllRecipes();
  print(allRecipes);

  print("Herzlich Willkommen bei Foodie :)");
  registration user = registration();
  if (!user.registrieren()) {
    return;
  }
  if (!user.anmelden()) {
    return;
  }
  bool eingeloggt = true;
  RecipeManager recipeManager = RecipeManager();
  while (eingeloggt) {
    print("Menü:");
    print("1. Rezept hinzufügen");
    print("2. Rezepte-Feed ansehen");
    print("3. Abmelden");
    print("Bitte wählen Sie eine Option: ");

    String? auswahl = stdin.readLineSync();
    switch (auswahl) {
      case '1':
        recipeManager.rezeptHinzufuegen();
        break;
      case '2':
        recipeManager.rezepteAnsehen();
        break;
      case '3':
        print("Sie haben sich erfolgreich abgemeldet.");
        eingeloggt = false;
        break;
      default:
        print("Ungültige Auswahl. Bitte erneut versuchen.");
    }
  }
  User beyz = User(email: "beyz.61@", password: "6161", name: "beyz");

  beyz.showUserInfo();
}
