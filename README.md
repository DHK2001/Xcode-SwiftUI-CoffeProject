# Xcode-SwiftUI-CoffeProject
A SwiftUI coffee shop app where users can customize drinks and view their order history. Menu items and options are loaded from a JSON file (menu.json). Users can choose size, caffeine shots, add milk or syrup, and see estimates of caffeine and calories. No backend or APIs used.

# Custom Coffee Shop App - SwiftUI Project

This project is a coffee shop application developed in SwiftUI that allows users to customize their drinks by selecting ingredients, sizes, and other preferences. Users can also view their previous order history and save new custom drinks. All data is loaded from a local JSON file without using any backend or APIs.

## Features

- **Order History**: Upon entering the app, users can see a list of all the drinks they’ve previously ordered.
- **Customizable Menu**: Users can add new drinks by selecting the "+" icon, which opens a menu with available drink options.
- **Drink Customization**: After selecting a drink from the menu, users can personalize it with the following options:
  - Drink size (small, medium, large).
  - Number of caffeine shots.
  - Option to make it decaf.
  - Add milk or syrup.
  - An estimate of the drink’s caffeine content and calories is shown.
- **Save Custom Drinks**: Once a drink is customized, the user can save it to their order history.

## Data Source

All drink and customization data is stored locally in a JSON file within the project:

- `menu.json`: Contains a list of available drinks and their customization options (sizes, caffeine shots, milk, syrup, etc.).

## Purpose of the Project

The purpose of this app is to practice the following SwiftUI functionalities:

- **SwiftUI UI Design**: Build an interactive user interface that allows users to select and customize drinks.
- **State Management and Navigation**: Implement navigation between views (menu, drink customization, and order history) using SwiftUI’s state management.
- **Dynamic Calculations**: Display estimated caffeine content and calories based on the user’s selections.
- **Local JSON Data Handling**: Learn to load and manipulate local data from a JSON file to populate the app’s UI.

## How It Works

1. **Order History**: When the app is launched, users can view their previous orders in the history list.
2. **Drink Menu**: By clicking the "+" icon on the main screen, users can access a menu of available drinks. This menu is populated using the `menu.json` file.
3. **Drink Customization**: After selecting a drink, users can:
   - Choose the size.
   - Adjust the number of caffeine shots.
   - Opt for a decaf version.
   - Add milk or syrup.
   - View an estimate of the drink’s caffeine content and calorie count.
4. **Save Drink**: Once a drink is customized, users can save it to their history for future reference.

## JSON Structure

- **menu.json**: This file contains an array of objects, each representing a drink. Each object includes:
  - Name of the drink.
  - Available sizes.
  - Customization options (caffeine shots, milk, syrup, etc.).
  - Estimated nutritional information (calories, caffeine).

## Conclusion

This project is designed to practice using SwiftUI for creating an interactive, multi-view app with local data storage in JSON format. It demonstrates how to handle user input, display custom data, and navigate between views. The app does not require any external APIs or backend.
