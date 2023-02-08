class UserModel {
  final String? id;
  final String? fullName;
  final String? farmName;
  final String? email;
  final String? password;
  final String? confirmPassword;

  const UserModel({
    this.id,
    required this.confirmPassword,
    required this.fullName,
    required this.farmName,
    required this.password,
    required this.email,
  });

  toJson(){
    return {
      "FullName": fullName,
      "FarmName": farmName,
      "Email": email,
      "Password": password,
      "ConfirmPassword": confirmPassword,
    };
  }


}