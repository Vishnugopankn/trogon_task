import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  List col = [100, 100, 100,100, 100, 100,100, 100, 100,100,];
  List subject = [
    "SSLC (MALAYALAM MEDIUM)",
    "PLUS ONE (SCIENCE)",
    "PLUS TWO (SCIENCE)",
    "CBSE CLASS 10",
    "SSLC (ENGLISH MEDIUM)",
    "CLASS 09 (KERALA STATE)",
    "NEET",
    "NEET/JEE",
    "IIT-JEE",
    "FOUNDATION MATHEMATICS"
  ];
  List gst = [
    "4000 INR+GST",
    "4000 INR+GST",
    "4000 INR+GST",
    "4000 INR+GST",
    "4000 INR+GST",
    "4000 INR+GST",
    "4000 INR+GST",
    "4000 INR+GST",
    "4000 INR+GST",
    "4000 INR+GST",
  ];

  List img=["https://img.theweek.in/content/dam/week/news/india/images/2019/1/9/sslc-students-file.jpg",
    "https://keralakaumudi.com/web-news/en/2022/12/NMAN0381901/image/students.1.1961337.jpg",
    "https://assets.telegraphindia.com/telegraph/2022/Feb/1645700640_jain-group1.jpg",
    "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/05/06/972615-970386-cbse-curriculam.jpg",
    "https://static.toiimg.com/thumb/msid-76671690,width-400,resizemode-4/76671690.jpg",
    "https://static.toiimg.com/thumb/msid-76671690,width-400,resizemode-4/76671690.jpg",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201607/neet_647_071816024841.jpg?VersionId=Cxo8JNmYyw2657fEqmEW0jJI5roBilfT",
    "https://images.news18.com/ibnlive/uploads/2022/07/shutterstock_-indian-medical-students-2052725855-16584824753x2.png",
    "https://www.thenewsminute.com/sites/default/files/styles/news_detail/public/Students_PTI.jpg?itok=F-Qomy0r",
    "https://www.gettingsmart.com/wp-content/uploads/2015/10/Math-Group.jpg"
  ];

  List catsub=["REGULAR EDUCATION",
    "ENTRANCE EXAMINATIONS",
    "PSYCHOLOGY AND APTITUDE",
    "HEALTHY AND WELLNESS",
    "FUTURE FAMILY",
    "BUSSINESS",
    "FUTURE TECHNOLOGIES",
    "FUTURE SKILLS",
  ];
  List img2=["images/img1.jpg","images/img2.jpg","images/img3.jpg","images/img4.jpg","images/img5.jpg","images/img6.jpg","images/img7.jpg","images/img8.jpg"];

  Widget secondList(String img, String subject,String gst) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 1,
            ),

          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(img),
            Text(
              subject,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                gst,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Futursity",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 25, color: Colors.green),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child:
              Image.network("https://futursity.com/assets/img/logo/logo.png"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              leading: Text(
                "Top Course",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              trailing: TextButton(onPressed: (){},
                child: Text(
                  "All Courses >",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
           /* GridView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemCount: col.length,
                itemBuilder: (BuildContext context, int i) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                        color: Colors.white,
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Image.network(
                                    "${img[i]}")),
                            SizedBox(
                              height: 10,
                            ),
                            Text("${subject[i]}"),
                          ],
                        ),
                    ),
                  );
                }),*/
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 180,
                width: double.maxFinite,

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    secondList("https://img.theweek.in/content/dam/week/news/india/images/2019/1/9/sslc-students-file.jpg","SSLC (MALAYALAM MEDIUM)","4000 INR+GST"),
                    secondList("https://keralakaumudi.com/web-news/en/2022/12/NMAN0381901/image/students.1.1961337.jpg", "PLUS ONE (SCIENCE)","4000 INR+GST"),
                    secondList("https://assets.telegraphindia.com/telegraph/2022/Feb/1645700640_jain-group1.jpg", "PLUS TWO (SCIENCE)","4000 INR+GST"),
                    secondList("https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/05/06/972615-970386-cbse-curriculam.jpg","CBSE CLASS 10", "4000 INR+GST"),
                    secondList("https://static.toiimg.com/thumb/msid-76671690,width-400,resizemode-4/76671690.jpg",  "SSLC (ENGLISH MEDIUM)","4000 INR+GST"),
                    secondList("https://static.toiimg.com/thumb/msid-76671690,width-400,resizemode-4/76671690.jpg","CLASS 09 (KERALA STATE)","4000 INR+GST" ),
                    secondList( "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201607/neet_647_071816024841.jpg?VersionId=Cxo8JNmYyw2657fEqmEW0jJI5roBilfT", "NEET","4000 INR+GST"),
                    secondList("https://images.news18.com/ibnlive/uploads/2022/07/shutterstock_-indian-medical-students-2052725855-16584824753x2.png", "NEET/JEE","4000 INR+GST"),
                    secondList("https://www.thenewsminute.com/sites/default/files/styles/news_detail/public/Students_PTI.jpg?itok=F-Qomy0r", "IIT/JEE","4000 INR+GST"),
                    secondList("https://www.gettingsmart.com/wp-content/uploads/2015/10/Math-Group.jpg", "FOUNDATION MATHEMATICS","4000 INR+GST"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Align(alignment: Alignment.centerLeft,
                child: Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
            GridView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   childAspectRatio: 3 / 2.7,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemCount: catsub.length,
                itemBuilder: (BuildContext context, int i) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: Stack(
                        children: [
                            Expanded(
                              child: Container(width: double.maxFinite,
                                  child: Image.asset("${img2[i]}",fit: BoxFit.fill,)),
                            ),
                          Align(alignment: Alignment.bottomCenter,
                            child: Container(color: Colors.blue,width: double.maxFinite,height: 40,
                              child: Center(child: Text("${catsub[i]}",style: TextStyle(fontWeight: FontWeight.w500),)),
                            ),
                          ),

                        ],
                      ),

                    )
                  );
                })
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          items: [
        BottomNavigationBarItem(backgroundColor: Colors.black,
            icon: Icon(Icons.school),
          label:  "Course",
        ),
        BottomNavigationBarItem(backgroundColor: Colors.black,
          icon: Icon(Icons.shopping_bag_outlined),
          label:  "My course",
        ),
        BottomNavigationBarItem(backgroundColor: Colors.black,
          icon: Icon(Icons.favorite_border),
          label:  "Wishlist",
        ),
        BottomNavigationBarItem(backgroundColor: Colors.black,
          icon: Icon(Icons.person),
          label:  "Account",
        ),
      ]
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.black,maxRadius: 25,child: Icon(Icons.filter),
      ),
    );
  }
}
