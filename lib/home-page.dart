import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          height: 50,
          width: kMaxWidth,
          color: kPrimaryColor,
          child: Center(
            child: Text('Services in Levitate',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 30,
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Container(
          child: Center(
            child: Text('Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem\n ipsum Lorem ipsum Lorem ipsum',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Container(
          height: 30,
          color: Colors.blueGrey[100],
          child: Center(
            child: Text('Services Footer',
            textAlign: TextAlign.center,
            ),
          ),
        ),
          SizedBox(height: 30),
        ],
      ),
      Container(
        child: Center(
          child: Text(
              'All Products',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
      Divider(),
      SizedBox(height: 30),
      FittedBox(
        child: Row(
          children: [
            Container(
              height: 250,
              width: kMaxWidth /4,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding))
              ),
            ),
            Padding(padding: EdgeInsets.all(kDefaultPadding)),
            Container(
              height: 250,
              width: kMaxWidth /4,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding))
              ),
            ),
            Padding(padding: EdgeInsets.all(kDefaultPadding)),
            Container(
              height: 250,
              width: kMaxWidth /4,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding))
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 30),
      Container(
        child: Center(
          child: Text(
            'Recent Products',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
      Divider(),
      SizedBox(height: 30),
      FittedBox(
        child: Row(
          children: [
            Container(
              height: 250,
              width: kMaxWidth /4,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding))
              ),
            ),
            Padding(padding: EdgeInsets.all(kDefaultPadding)),
            Container(
              height: 250,
              width: kMaxWidth /4,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding))
              ),
            ),
            Padding(padding: EdgeInsets.all(kDefaultPadding)),
            Container(
              height: 250,
              width: kMaxWidth /4,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding))
              ),
            ),
          ],
        ),
      ),
      ],
    );
  }
}
