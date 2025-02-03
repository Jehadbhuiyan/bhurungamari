import 'package:flutter/material.dart';
class History extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "history",
      debugShowCheckedModeBanner: false,
      home:history(),
    );
  }
}

class history extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('ভুরুঙ্গামারি অনলাইন সেবা',style: TextStyle(fontSize:25,color: Colors.white,fontWeight:FontWeight.bold,),),
    centerTitle: true,
    toolbarHeight: 70,
    backgroundColor: Colors.blueGrey,
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("প্রাচীনকালে ভূরুঙ্গামারী একটি নদীবহুল এলাকা ছিল। এখানকার সবগুলো নদীই খরস্রোতা ছিল।"
                  "এ অঞ্চলে প্রবাহিত নদীগুলো বার বার তাদের গতিপথ পরিবর্তন করেছে।"
                  "নদীর পরিত্যক্ত গতিপথ থেকে বিল ও পুকুর সদৃশ কুরা সৃষ্টি হয়েছে।"
                  "এখানকার প্রায় সবগুলো বিল এবং পুকুর মাছ চাষের উপযোগী।"
                  "মাছে ভাতে বাঙালি’ এ প্রবাদটি ভূরুঙ্গামারীর অধিবাসীদের কাছে এখনো সত্য।"
                  "এক সময় ভূরুঙ্গামারী রুই মাছের জন্য বিখ্যাত ছিল।"
                  "ভূরুঙ্গা মাছের প্রাচুর্য থেকে এই অঞ্চলের নামকরণ করা হয়েছে ভূরুঙ্গামারী।"
                  "লোকজন দল বেধে মাছ মারতে যাওয়ার সময় একে অপরকে আহ্বান করত ‘চল ভূরুঙ্গা মারতে যাই’। "
                  " এভাবে ভূরুঙ্গামারী নামটি প্রচলিত হয়েছে।"
                  "১৯৪৭ সালে ভারত বিভক্তির পূর্বে ভূরুঙ্গামারী কোচ রাজ্যের অন্তর্ভূক্ত ছিল।"
                  "ভূরুঙ্গামারী-সোনাহাট রোডটি মিলিটারী রোড নামে পরিচিত।"
                  " কথিত আছে যে, দ্বিতীয় বিশ্বযুদ্ধের সময় ব্রিটিশ সরকার সৈন্য চলাচলের জন্য রাস্তাটি তৈরি করেন।\n"
                  "রাস্তাটি ভারতের পশ্চিমবঙ্গ থেকে আসামের মনিপুর পর্যন্ত বিস্তৃত ছিল।\n"
                  "এই রাস্তাটি বাগভান্ডার বিডিআর ক্যাম্পের পাশ দিয়ে বাংলাদেশে প্রবেশ করেছে।\n"
                  " ১৯১৫ সালের পূর্বে ভূরুঙ্গামারী নাগেশ্বরী থানার অধীনে ছিল।\n"
                  "",style: TextStyle(fontSize: 25),),
            ),
          ],
        ),
      ),
    );
  }
}
