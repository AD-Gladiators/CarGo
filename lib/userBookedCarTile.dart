// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

import 'package:cargo/model/CarBooking.dart';
import 'package:cargo/services/auth.dart';
import 'package:cargo/services/database.dart';
import 'package:flutter/material.dart';
import 'package:cargo/model/Cars.dart';
import 'package:provider/provider.dart';
import 'carBookingsCarsList.dart';

class UserBookedCarTile extends StatelessWidget {
  final CarBooking carBooking;
  const UserBookedCarTile({super.key, required this.carBooking});

  @override
  Widget build(BuildContext context) {
    AuthService auth = AuthService();
    final String userId = auth.getUserId();
    //totalEarnings;
    print("String Status: " + carBooking.carBookingStatus);
    print("String Customer: " + carBooking.carCustomerId);
    print("String User Id: " + userId);
    print("String Car Id: " + carBooking.carId);

    if (carBooking.carBookingStatus == 'booked' &&
        carBooking.carCustomerId == userId) {
      return StreamProvider<List<Cars>?>.value(
        initialData: null,
        value: DatabaseService().cars,
        child: Expanded(
          child: CarBookingsCarsList(
            carBooking: carBooking,
          ),
        ),
      );
    } else {
      return SizedBox(height: 0, width: 0);
    }
  }
}
