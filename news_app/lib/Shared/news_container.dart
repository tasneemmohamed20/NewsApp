import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsCard extends StatelessWidget {
  final String? author;
  final String? title;
  final String? description;
  final String assetPaths;
  const NewsCard({super.key,
    required this.author,required this.title,required this.description,
    required this.assetPaths
  });
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenUtil = ScreenUtil();
    return InkWell(
      onTap: () {
        print('Image container tapped!');
      },
      child: Container(
        width: screenWidth < 600 ? screenWidth * 0.9 : screenUtil.setWidth(345),
        height: screenHeight * 0.3,
        margin: EdgeInsets.all(screenUtil.setWidth(10)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            screenUtil.setWidth(10),
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(

                  image:DecorationImage(
                      image:NetworkImage(assetPaths),
                    fit: BoxFit.cover,

                  ),
                  borderRadius: BorderRadius.circular(
                    screenUtil.setWidth(10),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    screenUtil.setWidth(10),
                  ),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(98, 98, 98, .10),
                      Color.fromRGBO(0, 0, 0, 1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.only(left: screenUtil.setWidth(16)),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 100),
                      Text(author!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenUtil.setSp(10),
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w800,
                        ),

                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          title!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenUtil.setSp(16),
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          description!,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenUtil.setSp(10),
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
