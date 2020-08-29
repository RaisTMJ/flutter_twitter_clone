 import 'tweet_model.dart';
import 'user_model.dart';


User Idarwiis = User(
    'Darwiis',
    'darwiis_a',
    'images/darwiis.jpg',
    'images/wiis.jfif',
    'Google’s UI toolkit to build apps for mobile, web, & desktop from a single codebase //',
    35,
    88675,
    true);
User IraisUsers = User(
  'Mohamad Rais',
  'raisTmj',
  'images/profile.jpg',
  'images/banner.jfif',
  'Flutter developer. I create clone apps and much more! 👨‍💻',
  2,
  1200,
  false,
);

List<Twt> tweets = [
   Twt(
     Idarwiis,
     '#FlutterFriday\nis\nhere.\n\nRight pointing backhand indexYou can specify whether your Flutter '
         'project uses Swift, Objective C, Kotlin, or Java by specifying:\n\n"--ios-language objc" or "--android-langu'
         'age java" when you type "flutter create".\n\nElectric light bulbBy default new projects use Kotlin and '
         'Swift.',
     null,
     15,
     false,
     38,
     false,
     244,
     1587345183868,
   ),
   Twt(
     IraisUsers,
     'This is a test twt to see how all this works, yay!',
     null,
     495,
     false,
     193,
     false,
     2,
     1587343553550,
   ),
   Twt(
     Idarwiis,
     '⚡️Flutter is fast by default, but let\'s find out what might affect your app\'s performance.\n\nJoin '
         '@filiphracek at #FlutterEurope as he walks the audience through an app with many performance issues, and '
         'tries to address all of them.\n\nWatch here → https://goo.gle/2UPajJy',
     'https://pbs.twimg.com/media/EUng32oVAAMhOwH?format=jpg&name=medium',
     286,
     false,
     66,
     false,
     5,
     1585852320000,
   ),
   Twt(
     IraisUsers,
     r"Well... this is a more longer twt, I'm not sure if it works or not but, who knows, maybe it does",
     null,
     198,
     false,
     43,
     false,
     0,
     1585751520000,
   ),
   Twt(
     IraisUsers,
     'Meh, not much',
     'https://miro.medium.com/max/1400/1*pFq49dtiBDpE5U4tySu-Hg.png',
     34,
     false,
     4,
     false,
     0,
     1585427520000,
   ),
   Twt(
     Idarwiis,
     r"We are postponing the LATAM Roadshow. The health and safety of our community is our priority. We'll be sure to update you as soon as we have more information.\n\n💙Thank you for keeping this community thriving, and stay tuned!\n\n- The Flutter Team",
     null,
     150,
     false,
     20,
     false,
     3,
     1585852320000,
   ),
];