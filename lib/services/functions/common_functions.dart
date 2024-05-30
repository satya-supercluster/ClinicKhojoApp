import 'package:intl/intl.dart';
import 'package:string_similarity/string_similarity.dart';


// Date Format for Appointment Details page

String getMonth(DateTime date) {
  return DateFormat.MMMM().format(date);
}

//Search Implementation

List<Map<String, dynamic>> searchDoctors(
    List<Map<String, dynamic>> doctors, String searchString) {
  // Convert the searchString to lowercase for case-insensitive search
  searchString = searchString.toLowerCase();
  List<MapEntry<Map<String, dynamic>, double>> scoredDoctors = [];

  // Split the searchString into individual words
  List<String> searchWords = searchString.split(' ');

  // Iterate through the list of doctors
  for (Map<String, dynamic> doctor in doctors) {
    // Get the doctor's name from the map
    String name = doctor['name'] ?? '';

    // Convert the name to lowercase for case-insensitive comparison
    String lowercaseName = name.toLowerCase();

    // Calculate the similarity score between the name and the searchString
    double similarityScore = StringSimilarity.compareTwoStrings(
      lowercaseName,
      searchString,
    );

    // Calculate the word frequency score based on the number of search words present in the name
    double wordFrequencyScore = searchWords
        .where((word) => lowercaseName.contains(word))
        .length /
        searchWords.length;

    // Combine the similarity score and word frequency score into a single relevance score
    double relevanceScore = (similarityScore + wordFrequencyScore) / 2;

    // Add the doctor and its relevance score to the scoredDoctors list
    scoredDoctors.add(MapEntry(doctor, relevanceScore));
  }

  // Sort the scoredDoctors list in descending order based on the relevance score
  scoredDoctors.sort((a, b) => b.value.compareTo(a.value));

  // Return the sorted list of doctors
  return scoredDoctors.map((entry) => entry.key).toList();
}