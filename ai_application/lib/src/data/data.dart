class Sign {
  String name;
  String photoname;
  String description;

  Sign(this.name, this.photoname, this.description);
  
}
List<String> descriptions = ["To greet someone with a hello, make the sign by extending your fingers and cross your thumb in front of your palm. Now take the hand, starting with your hand in front of your ear, and extend it outward and away from your body.",
                              "Welcome is signed by holding your dominant hand up around shoulder or head level, palm facing up and slightly curved, then bringing it closer towards your center. It is like you are welcoming - or inviting - a guest over.",
                              "The sad sign looks like you are making tears fall down your face. Take both hands with fingers outstretched, and pull them from above your eyes down to about chest level. With emotional signs such as sad, you should make facial expressions that match the sign. Make a droopy face with downcast eyes while you make the sad sign.",
                              "The sign for no is like that scolding teacher in high school that always says no to everything. The sign looks like a mouth saying no. Take your index finger together with your middle finger and tap them together with your thumb.",
                              "The airport sign is signed like airplane: take your outstretched hand, and tuck in your middle and ring fingers. Then move your hand away from your body a short distance, as if flying, and bob it back and forth a couple of times. If you move your hand a bit further up and out, slightly above your head, that's already the sign for fly.",
                              "To do aunt, make a fist with your thumb sticking out near your face, at top of the fist. Leading with the thumb, move your hand in a small circle near your cheek",
                              "To sign brother, make both hands into an 'L' shape with your thumbs and index fingers extended. Hold your non-dominant 'L' hand down by your chest. Take your dominant hand and starting at the forehead, forming the tip of a baseball hat, bring the hand down to rest on your non-dominant hand, transforming it into an 'L'.",
                              "Child is signed by taking your dominant hand with palm facing down and bobbing your hand up and down in front of your body. The sign looks like you are patting a child on the head.",
                              "To sign church, form your non-dominant hand into a fist, and your dominant hand into the letter C sign. Then bounce your 'C' hand off your steady fist a couple of times.",
                              "To sign city, take both slightly curved flat hands, then have them touch at the fingertips while facing opposite directions. Switch both hands' positions while twisting them back and forth, releasing and touching the fingertips a couple of times. This is the same sign for village, community, and town.",
                              "To sign country, make your flat, dominant hand move in a circular fashion on the elbow of your non-dominant arm.",
                              "The cousin sign is made by making your hand into a C-shape. Place the C-hand by the side of your head and twist it back and forth.",
                              "The sign for drink looks just like you are holding and drinking from an imaginary cup. To sign cup, make your hand into a 'C' shape, as if holding a cup in your hand. Take your hand up to your mouth as if drinking from the cup.",
                              "Make the sign for eat by taking your dominant hand and tapping your fingers to your mouth once. To sign food, make the same handshape but tap your fingers to your mouth twice. This universal sign for eating is the same sign used for food. The only difference is that verbs are signed once, and nouns are signed twice.",
                              "Father is signed exactly like daddy, if you are referring to a biological, foster, adoptive, or stepfatherthen tap the thumb end on your forehead."];

List<dynamic> data = [
  new Sign('Hello', "Hello.PNG", descriptions[0]),
  new Sign('welcome', "welcome.png", descriptions[1]),
  new Sign('Sad', "Sad.PNG", descriptions[2]),
  new Sign('No', "No.PNG", descriptions[3]),
  new Sign('Airport', "Airport.PNG", descriptions[4]),
  new Sign('Aunt', "Aunt.PNG", descriptions[5]),
  new Sign('Brother', "Brother.PNG", descriptions[6]),
  new Sign('Child', "Child.PNG", descriptions[7]),
  new Sign('Church', "Church.PNG", descriptions[8]),
  new Sign('City', "City.PNG", descriptions[9]),
  new Sign('Country', "Country.PNG", descriptions[10]),
  new Sign('Cousin', "Cousin.PNG", descriptions[11]),
  new Sign('Drink', "Drink.PNG", descriptions[11]),
  new Sign('Eat', "Eat.PNG", descriptions[12]),
  new Sign('Father', "Father.PNG", descriptions[13]),
];
