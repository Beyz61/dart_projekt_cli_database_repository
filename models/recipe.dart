class Recipe {
  String title;
  List<String> ingredients;
  String preparation;
// ingredients: Zutaten
// preparation: zubereitung

  Recipe({
    required this.title,
    required this.ingredients,
    required this.preparation,
  });
  @override
  String toString() {
    return "Gericht: $title, Zutaten: $ingredients, Zubereitun: $preparation";
  }
}

/*void main() {
  Recipe pastaBolognese = Recipe(
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
  );

  print('Titel: ${pastaBolognese.title}');
  print('Zutaten:');
  for (var ingredient in pastaBolognese.ingredients) {
    print('• $ingredient');
  }
  print('Zubereitung: ${pastaBolognese.preparation}');
}
*/