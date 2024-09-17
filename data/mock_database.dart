//Aufgabe 7
//Aufgabe 7
import '../models/recipe.dart';
import '../models/user.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<User> users = [];
  List<Recipe> recipes = [
    Recipe(
        title: "Käsekuchen",
        ingredients: ["Eier", "Quark"],
        preparation: "Misch alles.")
  ];
// Warum kann ich das in der main nicht abrufen?
  @override
  void addRecipe(Recipe newRecipe) {
    recipes.add(newRecipe);
  }

  @override
  void addUser(User user) {}

  @override
  bool checkUserCredentials(String userName, String password, String email) {
    throw UnimplementedError();
  }

  @override
  void editUser(User user) {}

  @override
  List<Recipe> getAllRecipes() {
    return recipes;
  }

  @override
  void removeRecipe(Recipe recipe) {
    recipes.remove(recipe);
  }

  @override
  void removeUser(String recipeId) {}

  @override
  void updateRecipe(Recipe updatedRecipe) {}
}
