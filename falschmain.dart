import 'dart:io';
import 'models/user.dart';

void main() {
  print("Herzlich Willkommen bei Foodie :)");

  // Variablen zum Speichern der Benutzerdaten
  String? nutzername;
  String? password;
  bool eingeloggt = false;

  // Liste zum Speichern der Rezepte
  List<Map<String, String>> rezepte = [];

  // Registrierung
  print("Bitte wählen Sie einen Benutzernamen: ");
  nutzername = stdin.readLineSync();

  print("Bitte wählen Sie ein Passwort: ");
  password = stdin.readLineSync();

  // Überprüfung der Eingaben
  if (nutzername != null &&
      password != null &&
      nutzername.isNotEmpty &&
      password.isNotEmpty) {
    print(
        "Registrierung erfolgreich! Ihr Benutzername '$nutzername' und Passwort wurden gespeichert.");
  } else {
    print("Registrierung fehlgeschlagen. Bitte gültige Daten eingeben.");
    return;
  }

  // Anmeldung
  print("Bitte geben Sie Ihren Benutzernamen zur Anmeldung ein: ");
  String? loginNutzername = stdin.readLineSync();

  print("Bitte geben Sie Ihr Passwort ein: ");
  String? loginPassword = stdin.readLineSync();

  if (loginNutzername == nutzername && loginPassword == password) {
    print("Anmeldung erfolgreich! Willkommen zurück, $nutzername.");
    eingeloggt = true;
  } else {
    print("Falscher Benutzername oder Passwort.");
    return;
  }

  // Menü nach Anmeldung
  while (eingeloggt) {
    // Menüoptionen anzeigen
    print("Menü:");
    print("1. Rezept hinzufügen");
    print("2. Rezepte-Feed ansehen");
    print("3. Abmelden");

    print("Bitte wählen Sie eine Option: ");
    String? auswahl = stdin.readLineSync();

    switch (auswahl) {
      case '1':
        // Rezept hinzufügen
        print("Bitte geben Sie den Titel des Rezepts ein: ");
        String? titel = stdin.readLineSync();

        print("Bitte geben Sie die Zutaten des Rezepts ein: ");
        String? zutaten = stdin.readLineSync();

        if (titel != null &&
            zutaten != null &&
            titel.isNotEmpty &&
            zutaten.isNotEmpty) {
          Map<String, String> rezept = {'titel': titel, 'zutaten': zutaten};
          rezepte.add(rezept);
          print("Rezept erfolgreich hinzugefügt!");
        } else {
          print(
              "Fehler beim Hinzufügen des Rezepts. Bitte gültige Daten eingeben.");
        }
        break;
      case '2':
        // Rezepte-Feed ansehen
        if (rezepte.isNotEmpty) {
          print("Rezepte-Feed:");
          for (var rezept in rezepte) {
            print("Titel: ${rezept['titel']}, Zutaten: ${rezept['zutaten']}");
          }
        } else {
          print("Keine Rezepte verfügbar.");
        }
        break;
      case '3':
        // Abmelden
        print("Sie haben sich erfolgreich abgemeldet.");
        eingeloggt = false; // Schleife wird beendet
        break;

      default:
        print("Ungültige Auswahl. Bitte erneut versuchen.");
    }
  }
  User beyz = User(email: "beyz.61@", password: "6161", name: "beyz");

  beyz.showUserInfo();
}
