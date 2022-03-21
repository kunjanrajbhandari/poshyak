import 'package:flutter/cupertino.dart';
import 'package:poshyak/kconstant.dart';

class InstaPost extends StatelessWidget {
  const InstaPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/icon/instagram.png'),
              height: 22,
            ),
            Padding(
              padding: leftPadding * 2,
              child: Text("@POSH.YAK"),
            )
          ],
        ),
        Padding(
          padding: allPadding / 2,
          child: SizedBox(
            height: 377,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: .9,
                    mainAxisSpacing: 4.0,
                    crossAxisCount: 3),
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.only(right: 2.0, left: 2, bottom: 3),
                      child: Container(
                        width: 99,
                        height: 99,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://i0.wp.com/apkmody.io/wp-content/uploads/2018/07/Instagram-Cover-Photo.jpg?resize=720%2C360&ssl=1'),
                                fit: BoxFit.cover)),
                      ));
                }),
          ),
        ),
      ],
    );
  }
}
