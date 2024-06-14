import 'package:edtech_app/model/course.dart';
import 'package:edtech_app/model/course_section.dart';
import 'package:edtech_app/model/user.dart';
import 'package:edtech_app/model/question.dart';
class FakeData {
  List<Course> courses = [
    Course(
      name: 'Flutter Basics',
      imgUrl: 'https://www.ituonline.com/wp-content/uploads/2023/08/Adobe-Illustrator-System-Requirements.jpg',
      hour: 10,
      overview: 'An introduction to Flutter development.',
      price: 50,
      sections: [],
    ),
    Course(
      name: 'Advanced Flutter',
      imgUrl: 'https://www.ituonline.com/wp-content/uploads/2023/08/Adobe-Illustrator-Sketch-to-Vector-Tutorial.jpg',
      hour: 20,
      overview: 'Deep dive into advanced Flutter concepts.',
      price: 50,
      sections: [],
    ),
    Course(
      name: 'React Native Essentials',
      imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJgrKpi7rXOkhhHUdL7Uv55TQlnYXjkftWfy6TFQcWk48JM2uA3YgwcBdX7RMrMVA2aH8&usqp=CAU',
      hour: 15,
      overview: 'Learn the essentials of React Native.',
      price: 50,
      sections: [],
    ),
    Course(
      name: 'Swift for iOS',
      imgUrl: 'https://www.gameinformer.com/sites/default/files/styles/full/public/2023/05/03/447b9a7a/sm1_mastered_.jpg',
      hour: 12,
      overview: 'Get started with Swift for iOS development.',
      price: 50,
      sections: [],
    ),
    Course(
      name: 'Kotlin for Android',
      imgUrl: 'https://www.gameinformer.com/sites/default/files/styles/full/public/2023/05/03/447b9a7a/sm1_mastered_.jpg',
      hour: 18,
      overview: 'Master Kotlin for Android app development.',
      price: 50,
      sections: [],
    ),
    Course(
      name: 'JavaScript Mastery',
      imgUrl: 'https://www.gameinformer.com/sites/default/files/styles/full/public/2023/05/03/447b9a7a/sm1_mastered_.jpg',
      hour: 22,
      overview: 'Become proficient in JavaScript programming.',
      price: 50,
      sections: [],
    ),
    Course(
      name: 'Python for Beginners',
      imgUrl: 'https://via.placeholder.com/150',
      hour: 8,
      overview: 'A beginner-friendly course on Python programming.',
      price: 50,
      sections: [],
    ),
    Course(
      name: 'Data Science with Python',
      imgUrl: 'https://via.placeholder.com/150',
      hour: 25,
      overview: 'Learn data science concepts using Python.',
      price: 50,
      sections: [],
    ),
    Course(
      name: 'UI/UX Design Fundamentals',
      imgUrl: 'https://via.placeholder.com/150',
      hour: 14,
      overview: 'Understand the basics of UI/UX design.',
      price: 50,
      sections: [],
    ),
    Course(
      name: 'Machine Learning A-Z',
      imgUrl: 'https://via.placeholder.com/150',
      hour: 30,
      overview: 'Comprehensive guide to machine learning.',
      price: 50,
      sections: [],
    ),
  ];

  late Course sampleCourse;

  List<CourseSection> courseSections = [];
  List<Question> questions =[];
  FakeData() {
    sampleCourse = Course(
      name: 'Flutter Basics',
      imgUrl: 'https://www.ituonline.com/wp-content/uploads/2023/08/Adobe-Illustrator-System-Requirements.jpg',
      hour: 10,
      overview: 'An introduction to Flutter development.',
      price: 50,
      sections: [],
    );
    courseSections = [
      CourseSection(name: "What is Flutter", introduction: "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time,a lot of determination, and a teacher you trust.Once the form data has been validated on the client-side, it is okay to submit the form. And, since we covered validation in the previous article, we're ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns.", course: sampleCourse, imgURL:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ19Z8nyT_WYDVeApZDmBitRTMmDYRzSZ2pYR6ken_p0DGTzb39hLY1L7kVA60r3eQY2A&usqp=CAU",questions: [] ),
      CourseSection(name: "Dart Language", introduction:"You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time,a lot of determination, and a teacher you trust.Once the form data has been validated on the client-side, it is okay to submit the form. And, since we covered validation in the previous article, we're ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns.", course: sampleCourse, imgURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1uZZamBjhn_esgj8W77DS5zmwMDTaSXKcoy_UItHpm8QENBbiWcWXNYlQNpn_WPiWnqQ&usqp=CAU",questions: []),
      CourseSection(name: "Main Tags", introduction: "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time,a lot of determination, and a teacher you trust.Once the form data has been validated on the client-side, it is okay to submit the form. And, since we covered validation in the previous article, we're ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns.", course: sampleCourse, imgURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7FRcZzJbyNPZRuUhULLHIABBwRmHsASAUqSz6boKMVbfKd18HCtd0YHWl-NHhzWSX67I&usqp=CAU",questions: []),
      CourseSection(name: "Project Structure", introduction: "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time,a lot of determination, and a teacher you trust.Once the form data has been validated on the client-side, it is okay to submit the form. And, since we covered validation in the previous article, we're ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns.", course: sampleCourse, imgURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSStx6ehUtlMiui6vRo9DzbzrF3_as3YAly79qWPE1-XA2zSqrCbbUgJ62qmgtFySok9Ns&usqp=CAU",questions: []),
      CourseSection(name: "Mobile App with AI", introduction: "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time,a lot of determination, and a teacher you trust.Once the form data has been validated on the client-side, it is okay to submit the form. And, since we covered validation in the previous article, we're ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns.", course: sampleCourse, imgURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9w8peXfvbaek5UZrHiiXVIxXs0WoHX-_B87yE9LK3hNkcB9S6mngU99W5KMZCB-hwaOk&usqp=CAU",questions: []),
    ];

    questions =[
      Question(questionText: "What tag for the biggest header", options: ["<h5>","<p>","<h1>",], correctAnswerIndex: 2, courseSection: courseSections.first),
      Question(questionText: "What tag for the biggest header", options: ["<h5>","<p>","<h1>",], correctAnswerIndex: 2, courseSection: courseSections.first),
      Question(questionText: "What tag for the biggest header", options: ["<h5>","<p>","<h1>",], correctAnswerIndex: 2, courseSection: courseSections.first),
      Question(questionText: "What tag for the biggest header", options: ["<h5>","<p>","<h1>",], correctAnswerIndex: 2, courseSection: courseSections.first),
      Question(questionText: "What tag for the biggest header", options: ["<h5>","<p>","<h1>",], correctAnswerIndex: 2, courseSection: courseSections.first),
    ];

    for(int i = 0; i< questions.length; i++) {
      courseSections.first.questions?.add(questions.elementAt(i));
    }
      for(int i = 0; i< courseSections.length; i++){
      sampleCourse.sections.add(courseSections.elementAt(i));
    }
  }

  User user = User(
    name: "Nguyen Dat Khuong",
    password: "1123",
    email: "zzkhngzz@gmail.com",
    avatarURL: "https://i.pinimg.com/originals/49/3f/a0/493fa0f13970ab3ef29375669f670451.jpg",
  );
}
