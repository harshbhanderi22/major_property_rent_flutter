import 'package:flutter/material.dart';
import 'package:on_property/screens/about_us.dart';
import 'package:on_property/screens/add_property.dart';
import 'package:on_property/screens/agent_details.dart';
import 'package:on_property/screens/agents.dart';
import 'package:on_property/screens/audio_call.dart';
import 'package:on_property/screens/contact_us.dart';
import 'package:on_property/screens/dashboard.dart';
import 'package:on_property/screens/filters.dart';
import 'package:on_property/screens/followers.dart';
import 'package:on_property/screens/following.dart';
import 'package:on_property/screens/forgot_password.dart';
import 'package:on_property/screens/house_details.dart';
import 'package:on_property/screens/inner_chat.dart';
import 'package:on_property/screens/location.dart';
import 'package:on_property/screens/my_leads.dart';
import 'package:on_property/screens/new_contact_us.dart';
import 'package:on_property/screens/news_and_blog.dart';
import 'package:on_property/screens/news_and_blog_details.dart';
import 'package:on_property/screens/notifications.dart';
import 'package:on_property/screens/opt_screen.dart';
import 'package:on_property/screens/properties.dart';
import 'package:on_property/screens/saved_searches.dart';
import 'package:on_property/screens/search_properties.dart';
import 'package:on_property/screens/search_property.dart';
import 'package:on_property/screens/see_all_screen.dart';
import 'package:on_property/screens/settings.dart';
import 'package:on_property/screens/sign_in.dart';
import 'package:on_property/screens/sign_up.dart';
import 'package:on_property/screens/splash.dart';
import 'package:on_property/screens/terms_and_conditions.dart';
import 'package:on_property/screens/video_call.dart';
import 'package:on_property/screens/wishlist.dart';

class RouteGenerator {
  // ignore: missing_return
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => Splash());
      case 'Dashboard':
        return MaterialPageRoute(builder: (context) => DashBoard());
      case 'SignUp':
        return MaterialPageRoute(builder: (context) => SignUp());
      case 'SignIn':
        return MaterialPageRoute(builder: (context) => SignIn());
      case 'ForgotPassword':
        return MaterialPageRoute(builder: (context) => ForgotPassword());
      case 'OtpScreen':
        return MaterialPageRoute(builder: (context) => OtpScreen());
      case 'AboutUs':
        return MaterialPageRoute(builder: (context) => AboutUs());
      case 'AgentDetails':
        return MaterialPageRoute(builder: (context) => AgentDetails());
      case 'Agents':
        return MaterialPageRoute(builder: (context) => Agents());
      case 'InnerChat':
        return MaterialPageRoute(builder: (context) => InnerChat());
      case 'ContactUs':
        return MaterialPageRoute(builder: (context) => ContactUs());
      case 'MyLeads':
        return MaterialPageRoute(builder: (context) => MyLeads());
      case 'HouseDetails':
        return MaterialPageRoute(builder: (context) => HouseDetails());
      case 'Filters':
        return MaterialPageRoute(builder: (context) => Filters());
      case 'Location':
        return MaterialPageRoute(builder: (context) => Location());
      case 'Notifications':
        return MaterialPageRoute(builder: (context) => Notifications());
      case 'Wishlist':
        return MaterialPageRoute(builder: (context) => Wishlist());
      case 'SearchProperties':
        return MaterialPageRoute(builder: (context) => SearchProperties());
      case 'SearchProperty':
        return MaterialPageRoute(builder: (context) => SearchProperty());
      case 'SavedSearches':
        return MaterialPageRoute(builder: (context) => SavedSearches());
      case 'Notifications':
        return MaterialPageRoute(builder: (context) => Notifications());
      case 'NewsAndBlog':
        return MaterialPageRoute(builder: (context) => NewsAndBlog());
      case 'NewsAndBlogDetails':
        return MaterialPageRoute(builder: (context) => NewsAndBlogDetails());
      case 'NewContactUs':
        return MaterialPageRoute(builder: (context) => NewContactUs());
      case 'TermsAndConditions':
        return MaterialPageRoute(builder: (context) => TermsAndConditions());
      case 'Settings':
        return MaterialPageRoute(builder: (context) => Settings());
      case 'AddProperty':
        return MaterialPageRoute(builder: (context) => AddProperty());
      case 'VideoCall':
        return MaterialPageRoute(builder: (context) => VideoCall());
      case 'AudioCall':
        return MaterialPageRoute(builder: (context) => AudioCall());
      case 'SeeAllScreen':
        return MaterialPageRoute(builder: (context) => SeeAllScreen());
      case 'SearchProperty':
        return MaterialPageRoute(builder: (context) => SearchProperty());
      case 'Followers':
        return MaterialPageRoute(builder: (context) => Followers());
      case 'Following':
        return MaterialPageRoute(builder: (context) => Following());
      case 'Properties':
        return MaterialPageRoute(builder: (context) => Properties());
    }
    return null;
  }
}
