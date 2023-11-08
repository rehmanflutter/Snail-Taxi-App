import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/BookingControler/cancelTripCon.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class CancelTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler = Provider.of<CancelTripControler>(context, listen: false);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 66,
          ),
          RowBackCustam(context, 'Cancel Trip'),
          SizedBox(
            height: 73,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 240,
                  child: Textcustam(
                    text: 'Please select the reason for cancellation:',
                    size: 20,
                    weight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Btncol,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                Container(
                  height: 260,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          controler.toggleItemSelectionAccommodation(index);
                        },
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Consumer<CancelTripControler>(
                                builder: (context, value, child) => Checkbox(
                                  activeColor: Colors.green,
                                  value: value.isItemSelected(index),
                                  onChanged: (newvalue) {
                                    value.boxvalueAccommodation(newvalue!);
                                    value.toggleItemSelectionAccommodation(
                                        index);
                                  },
                                ),
                              ),
                            ),
                            Textcustam(
                              text: controler.title[index].toString(),
                              weight: FontWeight.w600,
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: controler.title.length,
                  ),
                ),
                SizedBox(
                  height: 69,
                ),
                Center(
                    child: RoundButton(
                        title: 'Submit',
                        fun: () {
                          Navigator.pushNamed(context, '/ChoseTripClass');
                        },
                        wigth: 200))
                //coloum end
              ],
            ),
          ),
        ],
      ),
    );
  }
}
