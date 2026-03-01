class Mahasiswa {
  String fullName;
  String username;
  String email;
  String birthDate;
  String phone;
  String gender;
  String address;
  String password;

  Mahasiswa({
    required this.fullName,
    required this.username,
    required this.email,
    required this.birthDate,
    required this.phone,
    required this.gender,
    required this.address,
    required this.password,
  });

  @override
  String toString() {
    return 'Mahasiswa{fullName: $fullName, username: $username, email: $email, '
        'birthDate: $birthDate, phone: $phone, gender: $gender, '
        'address: $address}';
  }
}