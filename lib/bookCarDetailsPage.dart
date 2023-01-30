// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names
import 'package:cargo/bookingConfirmationPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Car {
  String carId,
      carPicture,
      carManfacturer,
      carModel,
      carMakeYear,
      carLocation,
      carLicenseNumber,
      carHostName,
      carWheelDrive,
      carSeats,
      carGearBox,
      carFuelConsumption,
      carMileage;
  double carRentPrice;
  Car(
      {required this.carId,
      required this.carPicture,
      required this.carManfacturer,
      required this.carModel,
      required this.carMakeYear,
      required this.carLocation,
      required this.carLicenseNumber,
      required this.carHostName,
      required this.carWheelDrive,
      required this.carSeats,
      required this.carGearBox,
      required this.carFuelConsumption,
      required this.carMileage,
      required this.carRentPrice});
}

var car2 = Car(
  carId: '123',
  carPicture: 'prado',
  carManfacturer: 'Toyota',
  carModel: 'Prado',
  carMakeYear: '2015',
  carLocation: 'Jabra Street',
  carLicenseNumber: 'KRG 3415',
  carHostName: 'Hassan Mustafa',
  carWheelDrive: '2WD',
  carSeats: '4 Seats',
  carGearBox: 'Auto',
  carFuelConsumption: '12Km/L',
  carMileage: '120K',
  carRentPrice: 50,
);

class BookCarDetails extends StatefulWidget {
  const BookCarDetails({super.key, required this.carId});
  final String carId;
  @override
  State<BookCarDetails> createState() => _BookCarDetailsState();
}

class _BookCarDetailsState extends State<BookCarDetails> {
  DateTime startDateTime = DateTime.now();
  DateTime gapDate = DateTime.now();
  DateTime endDateTime = DateTime.now();
  String startDateBox = 'Start Date';
  String endDateBox = 'End Date';
  bool paymentStatus = true;
  bool userDocumentStatus = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CarGoAppBar(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        'Book Car',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bookCarContainer(context, car2),
            ],
          ),
        ),
      ),
    );
  }

  Padding bookCarContainer(BuildContext context, Car car) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 730,
        decoration: BoxDecoration(
          color: Color.fromARGB(233, 248, 248, 251),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 5),
                            blurRadius: 8),
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/${car.carPicture}.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '${car.carManfacturer} ${car.carModel} ${car.carMakeYear}',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 80),
                        Text(
                          '${car.carRentPrice.round()} RM/hr',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Text(
                          car.carLocation,
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            car.carLicenseNumber,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 25,
                    thickness: 1,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Host',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 21,
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage('assets/vendetta.png'),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              car.carHostName,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Features',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/wheelDrive.png',
                                  height: 40,
                                  width: 30,
                                ),
                                Text(
                                  car.carWheelDrive,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/seat.png',
                                  height: 40,
                                  width: 30,
                                ),
                                Text(
                                  car.carSeats,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/gearBox.png',
                                  height: 40,
                                  width: 25,
                                ),
                                Text(
                                  car.carGearBox,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/fuelConsumption.png',
                                  height: 40,
                                  width: 25,
                                ),
                                Text(
                                  car.carFuelConsumption,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/milage.png',
                                  height: 40,
                                  width: 30,
                                ),
                                Text(
                                  car.carMileage,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Rent Period',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 140,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: startDateCupertinoButton(context),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'To',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 140,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: endDateCupertinoButton(context),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  bookingButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding bookingButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(180, 50),
                textStyle: TextStyle(fontSize: 20),
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
              child: Text('Book'),
              onPressed: () {
                if (paymentStatus && userDocumentStatus) {
                  print(
                      "Book has been pressed with these dates: $startDateTime ### $endDateTime");
                } else {
                  print(
                      "###Please provide payment method and upload required documents###");
                }
                if (endDateTime.difference(startDateTime).inHours < 1) {
                  print(
                      '###You have to choose a date that has at least 1 hr difference###');
                } else {
                  print('###Thank you for your booking###');
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingConfirmation(
                      carPicture: 'prado',
                      carManfacturer: 'Toyota',
                      carModel: 'Prado',
                      carMakeYear: '2015',
                      carRentPrice: 50,
                      carLocation: 'Jabra Street',
                      carLicenseNumber: 'KGR 3451',
                      startDate: startDateTime,
                      endDate: endDateTime,
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }

  CupertinoButton endDateCupertinoButton(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) => Container(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 250,
                        child: CupertinoDatePicker(
                          backgroundColor: Colors.white,
                          initialDateTime: gapDate,
                          minimumDate: gapDate,
                          maximumDate: DateTime(2024),
                          onDateTimeChanged: (DateTime newTime) {
                            setState(() => endDateTime = newTime);
                            endDateBox =
                                '${endDateTime.year}/${endDateTime.month}/${endDateTime.day} ${endDateTime.hour}:${endDateTime.minute}';
                          },
                          use24hFormat: true,
                          mode: CupertinoDatePickerMode.dateAndTime,
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 51,
                        child: CupertinoButton(
                          color: Colors.deepPurpleAccent,
                          child: const Text('OK'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                    ],
                  ),
                ));
      },
      child: Text(
        endDateBox,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  CupertinoButton startDateCupertinoButton(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) => Container(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 250,
                        child: CupertinoDatePicker(
                          key: UniqueKey(),
                          backgroundColor: Colors.white,
                          minimumDate: DateTime.now(),
                          maximumDate: DateTime(2024),
                          onDateTimeChanged: (DateTime newTime) {
                            setState(() {
                              startDateTime = newTime;
                            });
                            gapDate = startDateTime.add(Duration(hours: 1));
                            endDateTime = gapDate;
                            endDateBox =
                                '${endDateTime.year}/${endDateTime.month}/${endDateTime.day} ${endDateTime.hour}:${endDateTime.minute}';
                            startDateBox =
                                '${startDateTime.year}/${startDateTime.month}/${startDateTime.day} ${startDateTime.hour}:${startDateTime.minute}';
                          },
                          use24hFormat: true,
                          mode: CupertinoDatePickerMode.dateAndTime,
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 51,
                        child: CupertinoButton(
                          color: Colors.deepPurpleAccent,
                          child: const Text('OK'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                    ],
                  ),
                ));
      },
      child: Text(
        startDateBox,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}

AppBar CarGoAppBar() {
  return AppBar(
    leading: BackButton(color: Colors.black),
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Image.asset(
        'assets/CarGo2.png',
        color: Colors.black,
        height: 120.0,
        width: 90.0,
      ),
    ),
  );
}
