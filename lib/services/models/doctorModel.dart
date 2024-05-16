class doctorModel{
  String name;
  String uniqueDoctorId;
  String isApproved;
  String profileImage;
  String contactNumber;
  String gender;
  String yearsOfExperience;
  List<String> specialization;
  List<String> symptoms;
  List<Map<String,String>> address;
  String bio;
  List<Map<String,String>>education;
  doctorModel({
    required this.name,
    required this.uniqueDoctorId,
    required this.isApproved,
    required this.profileImage,
    required this.contactNumber,
    required this.gender,
    required this.yearsOfExperience,
    required this.specialization,
    required this.symptoms,
    required this.address,
    required this.bio,
    required this.education
  });
}