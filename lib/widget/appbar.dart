import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(69.0);
  @override
  _MainAppBarState createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  TextStyle style = const TextStyle(color: Colors.white, fontSize: 16);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Image(
                          image: AssetImage('assets/icon/menu.png'),
                          height: 22,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 11,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        //color: Colors.red,
                        width: size.width / 2.5,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 33.0),
                              child: Image(
                                image: NetworkImage(
                                    'https://poshyak.com/images/Logoo1.png'),
                                height: 21,
                                width: 22,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 11.0),
                              child: Text(
                                "POSHYAK",
                                style: TextStyle(
                                  fontSize: 19,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: SizedBox(
                      width: size.width / 5,
                      //color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4.0, right: 2),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                image: AssetImage('assets/icon/search.png'),
                                height: 19,
                              ),
                              Image(
                                image: AssetImage('assets/icon/bell.png'),
                                height: 19,
                              ),
                              Image(
                                image: AssetImage('assets/icon/cart.png'),
                                height: 19,
                              )
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "MEN",
                  style: style,
                ),
                Text(
                  "WOMEN",
                  style: style,
                ),
                Text(
                  "KIDS",
                  style: style,
                ),
                Text(
                  "BEAUTY",
                  style: style,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
