// ignore_for_file: non_constant_identifier_names

class Event {
  Event({
    required this.event_name,
    required this.event_date,
    required this.event_desc,
    required this.image_url,
    required this.association_name,
  });
  final String association_name;
  final String event_name;
  final DateTime event_date;
  final String event_desc;
  final String image_url;
}

List<Event> dummyEvents = [
  Event(
      event_name: "Associate Member Selections",
      event_date: DateTime.now(),
      event_desc:
          """Passionate about making a positive impact and contributing to the vibrant student Commutnity at KGP?
This is the perfect oppurtunity for you!
The Student Welafre Group is delighted to announce the Associate menebers selsections for freshers.Apply for Creative Team,Design Team,PR/Lit Team,Tech Team or Videography Team and get a chance to larn and upskill.
No prerequisites requires!
Form link: https://pub.dev/packages/flutter_linkify
Deadline: 17th August
                          """,
      image_url: "assets/images/9.jpg",
      association_name: "Student Welfare Group"),
  
  Event(
      event_name: "Fresher's selction",
      event_date: DateTime.now(),
      event_desc:
          """communique_iitkgp "You don't need a new plan for the next year, You need a commitment"

Are you ready to join a team of amazing individuals who are passionate about personal growth and skill development? Do you want to learn and excel in the skills that will shape your personality and future? If yes, then don't miss this opportunity to apply for the Freshers' Selection of the Official Soft Skills and Personality Development Society of IIT Kharagpur! We are looking for enthusiastic and motivated freshers who want to join us in our mission to empower every student of KGP with the skills that matter!

Registration link: Check bio

Hurry up, the deadline is 23rd Aug, 11:59 PM, 2023! Freshers, this is your chance to shine! """,
      image_url: "assets/images/5.jpg",
      association_name: "Technology Literary Society")
];
