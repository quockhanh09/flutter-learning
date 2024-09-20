import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(
    home: ProfileScreen(),
  ));
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  // Biến lưu trữ các giá trị
  String _phoneNumber = '';
  String _email = '';
  String? _selectedGender;
  String? _selectedCity;
  bool _notificationsEnabled = false;
  String? _selectedLanguage;

  DateTime? _selectedDate;
  final List<String> _cities = [
    'Ho Chi Minh City',
    'Ha Noi City',
    'Da Nang City',
    'Can Tho City'
  ];

  // Hàm để hiển thị DatePicker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  // Validation Email bằng Regex
  String? _validateEmail(String? value) {
    const pattern =
        r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$'; // Regex cho email
    final regex = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!regex.hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg2.png"), // Đường dẫn đến ảnh nền
            fit: BoxFit.cover, // Đảm bảo ảnh phủ toàn bộ màn hình
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Logo và lời chào mừng
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 32),
                        SvgPicture.asset(
                          "assets/svg/account-svgrepo-com.svg",
                          height: 90,
                          width: 90,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Welcome again, KS!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Please Log into your existing account",
                          style: TextStyle(
                            color: Color.fromARGB(255, 247, 247, 247),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),

                  // Email field
                  _buildRow(
                    'Email',
                    TextFormField(
                      style: const TextStyle(color: Colors.white), // Chữ màu trắng
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.7), // Ô màu đen
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.white), // Viền trắng khi focus
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _validateEmail,
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // Phone number field
                  _buildRow(
                    'Phone Number',
                    TextFormField(
                      style: const TextStyle(color: Colors.white), // Chữ màu trắng
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.7), // Ô màu đen
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.white), // Viền trắng khi focus
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _phoneNumber = value!;
                      },
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // Date Picker
                  _buildRow(
                    'Date of Birth',
                    GestureDetector(
                      onTap: () => _selectDate(context),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _selectedDate == null
                                  ? 'Select Date of Birth'
                                  : DateFormat('dd/MM/yyyy').format(_selectedDate!),
                              style: const TextStyle(color: Colors.white),
                            ),
                            const Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // Gender
                  _buildRow(
                    'Gender',
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.7),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                      dropdownColor: Colors.black,
                      style: const TextStyle(color: Colors.white),
                      items: ['Male', 'Female', 'Other']
                          .map((gender) => DropdownMenuItem<String>(
                                value: gender,
                                child: Text(gender),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      },
                      value: _selectedGender,
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // City Selection
                  _buildRow(
                    'City',
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.7),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                      dropdownColor: Colors.black,
                      style: const TextStyle(color: Colors.white),
                      items: _cities
                          .map((city) => DropdownMenuItem<String>(
                                value: city,
                                child: Text(city),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedCity = value;
                        });
                      },
                      value: _selectedCity,
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // Language Selection with Flags
                  _buildRow(
                    'Language',
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildFlagButton('Vietnamese', 'assets/images/flag_vietnam.png'),
                        _buildFlagButton('English_UK', 'assets/images/flag_uk.png'),
                        _buildFlagButton('English_US', 'assets/images/flag_us.png'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // Notifications Toggle
                  SwitchListTile(
                    title: const Text('Enable Notifications',
                        style: TextStyle(color: Colors.white)),
                    value: _notificationsEnabled,
                    onChanged: (bool value) {
                      setState(() {
                        _notificationsEnabled = value;
                      });
                    },
                    activeColor: Colors.white,
                  ),

                  const SizedBox(height: 16.0),

                  // Submit button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          // Xử lý dữ liệu đã nhập
                          print('Email: $_email');
                          print('Phone: $_phoneNumber');
                          print(
                              'DOB: ${_selectedDate != null ? DateFormat('dd/MM/yyyy').format(_selectedDate!) : 'Not set'}');
                          print('Gender: $_selectedGender');
                          print('City: $_selectedCity');
                          print('Language: $_selectedLanguage');
                          print('Notifications: $_notificationsEnabled');
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Hàm tạo dòng với tiêu đề và ô nhập liệu
  Widget _buildRow(String label, Widget inputField) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 4,
          child: inputField,
        ),
      ],
    );
  }

  // Hàm tạo nút chứa lá cờ
  Widget _buildFlagButton(String language, String assetPath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedLanguage = language; // Cập nhật ngôn ngữ khi nhấn
        });
      },
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(
            color: _selectedLanguage == language
                ? Colors.white // Đổi màu viền khi ngôn ngữ được chọn
                : Colors.transparent,
          ),
          shape: BoxShape.circle, // Hình dạng nút tròn
        ),
        child: ClipOval(
          child: Image.asset(
            assetPath,
            width: 40,
            height: 40,
            fit: BoxFit.cover, // Đảm bảo hình ảnh vừa khít trong nút tròn
          ),
        ),
      ),
    );
  }
}
