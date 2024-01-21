///Task: optimise the filtering a list of integers, returning only those that
///are even and then square each of them
///
/// AI request: optimise code below

//Initial implementation
class SquareEvenNumbersService {
  List<int> squareEvenNumbers(List<int> numbers) {
    List<int> evenNumbers = [];
    for (int number in numbers) {
      if (number % 2 == 0) {
        evenNumbers.add(number);
      }
    }
    List<int> squaredNumbers = [];
    for (int number in evenNumbers) {
      squaredNumbers.add(number * number);
    }
    return squaredNumbers;
  }
}

//Modified implementation
