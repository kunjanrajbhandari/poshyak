import 'package:flutter/material.dart';
import 'package:poshyak/kconstant.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
              child: Column(
            children: const [
              Center(
                child: CircleAvatar(
                    radius: 55,
                    backgroundImage: NetworkImage(
                        'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png')),
              ),
              Padding(
                padding: topPadding,
                child: Text("Sign in / Sing up"),
              ),
            ],
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 29,
                      ),
                      Padding(
                        padding: leftPadding * 2,
                        child: Text("Profile"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/icon/order.png'),
                        height: 29,
                      ),
                      Padding(
                        padding: leftPadding * 2,
                        child: Text("Order"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/icon/tracking.png'),
                        height: 29,
                      ),
                      Padding(
                        padding: leftPadding * 2,
                        child: Text("Order Track"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/icon/sale.png'),
                        height: 29,
                      ),
                      Padding(
                        padding: leftPadding * 2,
                        child: Text("Sale"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/icon/boutique.png'),
                        height: 29,
                      ),
                      Padding(
                        padding: leftPadding * 2,
                        child: Text("Boutique"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/icon/writing.png'),
                        height: 29,
                      ),
                      Padding(
                        padding: leftPadding * 2,
                        child: Text("Blog"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/icon/coupon.png'),
                        height: 25,
                      ),
                      Padding(
                        padding: leftPadding * 2,
                        child: Text("Coupon"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/icon/lock.png'),
                        height: 25,
                      ),
                      Padding(
                        padding: leftPadding * 2,
                        child: Text("Security"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/icon/contact.png'),
                        height: 22,
                      ),
                      Padding(
                        padding: leftPadding * 2,
                        child: Text("Contact Us"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: allPadding * 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(),
                Text("About Us"),
                SizedBox(
                  height: 11,
                ),
                Text("FAQ"),
                SizedBox(
                  height: 11,
                ),
                Text("Term of Use"),
                SizedBox(
                  height: 11,
                )
              ],
            ),
          ),
          Center(child: Text("Sign out"))
        ],
      ),
    );
  }
}
