// Aufgabe 5
import '../models/recipe.dart';
import '../models/user.dart';

abstract class DatabaseRepository {
  // Einen User zur App hinzufügen (registrieren) (addUser)
  void addUser(String userName, String password, String email);

  // Die Daten eines Users anpassen (editUser)
  void editUser(User user);

  // Username ändern (changeUserName) (Optional, falls benötigt)
  // void changeUserName(String newUserName);

  // Logindaten eines Benutzers überprüfen (checkUserCredentials)
  bool checkUserCredentials(String userName, String password, String email);

  // Neues Rezept in Datenbank speichern (addRecipe)
  void addRecipe(Recipe newRecipe);

  // Rezept aktualisieren (updateRecipe)
  void updateRecipe(String recipeId, Recipe updatedRecipe);

  // Alle Rezepte abrufen (getAllRecipes)
  List<Recipe> getAllRecipes();

  // Alle Benutzer abrufen (getAllUsers)
  //List<User> getAllUsers();

  // Rezept löschen (removeRecipe)
  void removeRecipe(Recipe recipe);

  // Benutzer löschen (removeUser)
  void removeUser(String recipeId);
}
