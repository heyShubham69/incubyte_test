# String Calculator App

A simple Flutter application that demonstrates Test-Driven Development (TDD) concepts and a clean architecture approach to building a **String Calculator**. The app allows users to input a series of numbers (in string format), processes them, and calculates the result.

---

## Features

- Accepts user input for string-based number calculations.
- Implements TDD methodology for robust development.
- Follows **Clean Architecture** principles.
- Provides real-time result display with proper error handling.
- Fully functional with the **Provider** state management solution.

---

## Getting Started

### Prerequisites
Ensure you have the following installed on your system:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (v3.27.3 or higher)
- [Dart](https://dart.dev/get-dart) (v3.6.1 or higher)
- IDE (e.g., [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/))

**Folder Structure**
1. lib/
2. ├── application/          # Providers and state management logic
3. ├── domain/               # Business logic and use cases
4.     └── use_cases/        # Example: AddStringNumbersUseCase
5. ├── ui/         # UI layer with screens and widgets
6.     └── calculator/       # CalculatorScreen and related components
7. └── main.dart             # Entry point of the app

**Usage**
**1. Input String:** Enter a series of numbers separated by commas (e.g., 1,2,3).
**2. Calculate:** Tap on the "Calculate" button to see the result.
**3. Error Handling:** The app displays error messages for invalid inputs.

**Test-Driven Development (TDD)**
The app is developed using TDD principles:

1. Write a failing test.
2. Implement the minimum code to pass the test.
3. Refactor the code for clarity and maintainability.

**Dependencies**
The following packages are used in the project:

**provider:** For state management.
**flutter_test:** For writing and running tests.
