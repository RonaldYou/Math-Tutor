/*
Ronald You
Ms Basaraba
May 24th, 2019
RonaldYouISP_MathTutor
Math Tutor
*/
  
PFont titleFont, title2Font, subFont,sub2Font;//font variables
PImage addition,blackboard,subtraction,division,sqrRoot,equal,pi,sigma,apple;//image variables
int x = 1200,x2 = -500,y = 900,mode=0,pressed =0,answer1, score = 0,answer2,random = 0,answer3;//variables to store answers, scores, and for the x and y co-ordinates of the animation
float percent1 = 0; //variable to store the percentage
int L1q11,L1q12,L1q21,L1q22,L1q23,L1q31,L1q32,L1q41,L1q42,L1q43,L1q51,L1q52,L1q53,L1q61,L1q62,L1q71,L1q72,L1q73,L1q81,L1q82,L1q83,L1q91,L1q92,L1q93,L1q101,L1q102,L1q111,L1q112,L1q113,L1q121,L1q122,L1q123,L1q124,L1q131,L1q132; //variables for the random numbers in the questions in level1
int L2q11,L2q12,L2q21,L2q22,L2q23,L2q31,L2q32,L2q41,L2q42,L2q43,L2q51,L2q52,L2q53,L2q61,L2q62,L2q63,L2q64,L2q65,L2q71,L2q72,L2q81,L2q82,L2q91,L2q92,L2q101,L2q102,L2q111,L2q112,L2q121,L2q131,L2q132;//variables for the random numbers in the questions in level2
int L3q11,L3q12,L3q13,L3q21,L3q22,L3q23,L3q31,L3q32,L3q33,L3q34,L3q35,L3q41,L3q42,L3q43,L3q44,L3q45,L3q46,L3q51,L3q52,L3q53,L3q54,L3q55,L3q56,L3q61,L3q62,L3q71,L3q72,L3q81,L3q82,L3q91,L3q92,L3q93,L3q94,L3q101,L3q111,L3q121,L3q122,L3q123,L3q131,L3q132;//variables for the random numbers in the questions in level3
String Lesson1Q1, Lesson1Q2, Lesson1Q3, Lesson1Q4, Lesson1Q5, Lesson1Q6, Lesson1Q7, Lesson1Q8, Lesson1Q9, Lesson1Q10, Lesson1Q11, Lesson1Q12, Lesson1Q13; //variables to hold the questions in level1
String Lesson2Q1, Lesson2Q2, Lesson2Q3, Lesson2Q4, Lesson2Q5, Lesson2Q6, Lesson2Q7, Lesson2Q8, Lesson2Q9, Lesson2Q10, Lesson2Q11, Lesson2Q12, Lesson2Q13; //variables to hold the questions in level2
String Lesson3Q1, Lesson3Q2, Lesson3Q3, Lesson3Q4, Lesson3Q5, Lesson3Q6, Lesson3Q7, Lesson3Q8, Lesson3Q9, Lesson3Q10, Lesson3Q11, Lesson3Q12, Lesson3Q13; //variables to hold the questions in level3
String shortAnswerLevel16,shortAnswerLevel17,shortAnswerLevel18,shortAnswerLevel19,shortAnswerLevel20;//variables to hold randomly selected questions for level1
String shortAnswerLevel26,shortAnswerLevel27,shortAnswerLevel28,shortAnswerLevel29,shortAnswerLevel30;//variables to hold randomly selected questions for level2
String shortAnswerLevel36,shortAnswerLevel37,shortAnswerLevel38,shortAnswerLevel39,shortAnswerLevel40;//variables to hold randomly selected questions for level3
String typing = "";//variable to display short answer answer
void setup() {
  size(1000, 700);
  title2Font = loadFont("Monospaced.plain-48.vlw");//loading images
  titleFont = loadFont("TrebuchetMS-Bold-48.vlw");
  subFont  = loadFont("Century-48.vlw");
  sub2Font = loadFont("PalatinoLinotype-BoldItalic-48.vlw");
  blackboard = loadImage("blackboard12.png");
  subtraction = loadImage("subtraction.png");
  division = loadImage("division.png");
  sqrRoot = loadImage("sqrRoot.png");
  addition = loadImage("addition.png");
  equal = loadImage("equal.png");
  pi = loadImage("pi.png");
  sigma = loadImage("sigma.png");
  apple = loadImage("apple.png");
}

void userInput(){
  if (keyPressed && key >= 48 && key <= 57){//check proper key is pressed (in a limited range of 1,2,3,4,5,6,7,8,9)
    pressed = 1;
  }
  if(key >= 48 && key <= 57){
    if(keyPressed == false && pressed == 1){//check key is released to only print once
    typing+=key;
    pressed = 0;
    }  
  }
  text(typing,450,475);//location of the display
}

void draw() {
  if (mode ==0){//when the mode is initialized as a certain value, a certain screen will appear
    title();
  }
  if (mode == 1){
    intructions();//instructions on how to play the game
  }
  if (mode == 2){
    decisionCheck();//checks if the player wants to continue or exit
  }
  if (mode ==3){
    levels();//user chooses the level
    score = 0;//resets score
    
  }
  if (mode ==4){
    goodBye();//goodbye message
  }
  if (mode ==5){
    exit();//exits code when mode is 5
  }
  if (mode ==6){
    levelMenu1();//level 1 menu where the user chooses to read the lessons or skip to quiz
  }
  if (mode ==7){
    levelMenu2();
  }
  if (mode ==8){
    levelMenu3();
  }
  if (mode ==9){
    lesson1addition();//lesson on addition
  }
  if (mode ==15){
    lesson1subtraction();//lesson on subtraction
  }
  if(mode ==11){
    lesson2multiplication();//lesson on multiplication
  }
  if (mode ==16){
    if(random == 0){ //randomizes when random is 0
       L1q11 = int(random(1,40)); //random generation of numbers for multiple choice questions
       L1q12 = int(random(1,50));
       L1q21 = int(random(1,50));
       L1q22 = int(random(1,40));
       L1q23 = int(random(1,40));
       L1q31 = int(random(40,70));
       L1q32 = int(random(1,40));
       L1q41 = int(random(70,90));
       L1q42 = int(random(1,20));
       L1q43 = int(random(1,30));
       L1q51 = int(random(80,100));
       L1q52 = int(random(1,50));
       L1q53 = int(random(1,30));
       Lesson1Q1 = L1q11 + " + " + L1q12 + " ="; //format for multiple choice question 1
       random = 1; // prevents numbers randomizing more than once
    }
    lesson1mc1();// runs the method containing the answer and what to do next
  }
  if( mode ==17){
    if(random ==0){//randomizes when random is 0
       L1q11 = int(random(1,40));//random generation of numbers for multiple choice questions
       L1q12 = int(random(1,50));
       L1q21 = int(random(1,50));
       L1q22 = int(random(1,40));
       L1q23 = int(random(1,40));
       L1q31 = int(random(40,70));
       L1q32 = int(random(1,40));
       L1q41 = int(random(70,90));
       L1q42 = int(random(1,20));
       L1q43 = int(random(1,30));
       L1q51 = int(random(80,100));
       L1q52 = int(random(1,50));
       L1q53 = int(random(1,30));
       Lesson1Q2 = L1q21 + " + " + L1q22 + " + " + L1q23 + " =";//format for multiple choice question 2
       random = 1;
    }
    lesson1mc2();// runs the method containing the answer and what to do next
  }
  if (mode ==18){
    if (random == 0){//randomizes when random is 0
       L1q11 = int(random(1,40));//random generation of numbers for multiple choice questions
       L1q12 = int(random(1,50));
       L1q21 = int(random(1,50));
       L1q22 = int(random(1,40));
       L1q23 = int(random(1,40));
       L1q31 = int(random(40,70));
       L1q32 = int(random(1,40));
       L1q41 = int(random(70,90));
       L1q42 = int(random(1,20));
       L1q43 = int(random(1,30));
       L1q51 = int(random(80,100));
       L1q52 = int(random(1,50));
       L1q53 = int(random(1,30));
       Lesson1Q3 = L1q31 + "-" + L1q32 + " =";
       random = 1;
    }
    lesson1mc3();
  }
  if (mode ==19){
    if (random == 0){//randomizes when random is 0
       L1q11 = int(random(1,40));//random generation of numbers for multiple choice questions
       L1q12 = int(random(1,50));
       L1q21 = int(random(1,50));
       L1q22 = int(random(1,40));
       L1q23 = int(random(1,40));
       L1q31 = int(random(40,70));
       L1q32 = int(random(1,40));
       L1q41 = int(random(70,90));
       L1q42 = int(random(1,20));
       L1q43 = int(random(1,30));
       L1q51 = int(random(80,100));
       L1q52 = int(random(1,50));
       L1q53 = int(random(1,30));
       Lesson1Q4 = L1q41 + "-" + L1q42 + "-" + L1q43 + " =";
       random = 1;
    }
    lesson1mc4();
  }
  if(mode ==20){
    if (random ==0){//randomizes when random is 0
       L1q11 = int(random(1,40));//random generation of numbers for multiple choice questions
       L1q12 = int(random(1,50));
       L1q21 = int(random(1,50));
       L1q22 = int(random(1,40));
       L1q23 = int(random(1,40));
       L1q31 = int(random(40,70));
       L1q32 = int(random(1,40));
       L1q41 = int(random(70,90));
       L1q42 = int(random(1,20));
       L1q43 = int(random(1,30));
       L1q51 = int(random(80,100));
       L1q52 = int(random(1,50));
       L1q53 = int(random(1,30));
       Lesson1Q5 = L1q51 + "-" + L1q52 + "+" + L1q53 + " =";
       random = 1;
     }
    lesson1mc5();
  }
  if (mode == 21){
    if(random == 0){//randomizes when random is 0
      L1q61 = int(random(25,50));//random generation of numbers for short answer questions
      L1q62 = int(random(1,49));
      L1q71 = int(random(40));
      L1q72 = int(random(90));
      L1q73 = int(random(40));
      L1q81 = int(random(100,200));
      L1q82 = int(random(200));
      L1q83 = int(random(300));
      L1q91 = int(random(5000,6000));
      L1q92 = int(random(3000,5000));
      L1q93 = int(random(3000));
      L1q101 = int(random(90,150));
      L1q102 = int(random(90));
      L1q111 = int(random(70,100));
      L1q112 = int(random(35));
      L1q113 = int(random(35));
      L1q121 = int(random(20,50));
      L1q122 = int(random(30));
      L1q123 = L1q121 + L1q122;
      L1q124 = L1q123 + L1q122;
      L1q131 = int(random(200));
      L1q132 = int(random(300));
      Lesson1Q6 = "If Kenneth has " + L1q61 + " apples and Gary takes away " + L1q62 + " apples, how many apples is Kenneth left with?";
      Lesson1Q7 = "If Justin started with " + L1q71+ " pies then Oscar gave him " + L1q72 + " more pies , but Daniel took "+ L1q73+ " away, how many pies does Justin have?"; 
      Lesson1Q8 = "Ashley bought a big bag of candy. The bag had "+ L1q81 +" blue candies, " + L1q82 + " red candies and " +L1q83 + " green candies. How many candies were there in total?";
      Lesson1Q9 = "Jay is a rich boy, so he starts of with "+L1q91 + " dollars, he is also nice so he gives some money to a few of his friends. Jay gives " + L1q92 + " to Aryan but Aryan isn't greedy so he gives " + L1q93 +" back to Jay. How much money does Jay have?";
      Lesson1Q10 = "Your team scored a total of " + L1q101 + " points. " + L1q102 +" points were scored in the first half. How many were scored in the second half?";
      Lesson1Q11 = "Charlene had a pack of " + L1q111 +" pencil crayons. She gave " + L1q112 +" to her friend Theresa. She gave "+L1q113 +" to her friend Mandy. How many pencil crayons does Charlene have left?";
      Lesson1Q12 = "Each month, Jeremy adds the same number of cards to his baseball card collection. In January, he had " + L1q121 +". " + L1q123 +" in February. " +L1q124 +" in March. How many baseball cards will Jeremy have in April?";
      Lesson1Q13 = "Micha’s dad wants to try to save money on gas, so he has been tracking how much he uses. Last year, Micha’s dad used "+L1q131 +" litres of gas. This year, her dad used "+L1q132+" litres of gas. How much gas did he use in total for the two years?";
      String [] Level1Questions = {Lesson1Q6, Lesson1Q7, Lesson1Q8, Lesson1Q9, Lesson1Q10, Lesson1Q11, Lesson1Q12, Lesson1Q13};//all the questons formats placed in an array
      shortAnswerLevel16 = Level1Questions[int(random(8))];//one random questions selected from the array 
      random = 1;
    }
    lesson1mc6();
    
    
  }
  if (mode ==28){
    if(random == 0){//randomizes when random is 0
      L1q61 = int(random(25,50));//random generation of numbers for short answer questions
      L1q62 = int(random(1,49));
      L1q71 = int(random(40));
      L1q72 = int(random(90));
      L1q73 = int(random(40));
      L1q81 = int(random(100,200));
      L1q82 = int(random(200));
      L1q83 = int(random(300));
      L1q91 = int(random(5000,6000));
      L1q92 = int(random(3000,5000));
      L1q93 = int(random(3000));
      L1q101 = int(random(90,150));
      L1q102 = int(random(90));
      L1q111 = int(random(70,100));
      L1q112 = int(random(35));
      L1q113 = int(random(35));
      L1q121 = int(random(20,50));
      L1q122 = int(random(30));
      L1q123 = L1q121 + L1q122;
      L1q124 = L1q123 + L1q122;
      L1q131 = int(random(200));
      L1q132 = int(random(300));
      Lesson1Q6 = "If Kenneth has " + L1q61 + " apples and Gary takes away " + L1q62 + " apples, how many apples is Kenneth left with?";
      Lesson1Q7 = "If Justin started with " + L1q71+ " pies then Oscar gave him " + L1q72 + " more pies , but Daniel took "+ L1q73+ " away, how many pies does Justin have?"; 
      Lesson1Q8 = "Ashley bought a big bag of candy. The bag had "+ L1q81 +" blue candies, " + L1q82 + " red candies and " +L1q83 + " green candies. How many candies were there in total?";
      Lesson1Q9 = "Jay is a rich boy, so he starts of with "+L1q91 + " dollars, he is also nice so he gives some money to a few of his friends. Jay gives " + L1q92 + " to Aryan but Aryan isn't greedy so he gives " + L1q93 +" back to Jay. How much money does Jay have?";
      Lesson1Q10 = "Your team scored a total of " + L1q101 + " points. " + L1q102 +" points were scored in the first half. How many were scored in the second half?";
      Lesson1Q11 = "Charlene had a pack of " + L1q111 +" pencil crayons. She gave " + L1q112 +" to her friend Theresa. She gave "+L1q113 +" to her friend Mandy. How many pencil crayons does Charlene have left?";
      Lesson1Q12 = "Each month, Jeremy adds the same number of cards to his baseball card collection. In January, he had " + L1q121 +". " + L1q123 +" in February. " +L1q124 +" in March. How many baseball cards will Jeremy have in April?";
      Lesson1Q13 = "Micha’s dad wants to try to save money on gas, so he has been tracking how much he uses. Last year, Micha’s dad used "+L1q131 +" litres of gas. This year, her dad used "+L1q132+" litres of gas. How much gas did he use in total for the two years?";
      String [] Level1Questions = {Lesson1Q6, Lesson1Q7, Lesson1Q8, Lesson1Q9, Lesson1Q10, Lesson1Q11, Lesson1Q12, Lesson1Q13};
      shortAnswerLevel17 = Level1Questions[int(random(8))];
      random = 1;
  }
    lesson1mc7();
    }
  
  if (mode ==29){
    if(random == 0){//randomizes when random is 0
      L1q61 = int(random(25,50));//random generation of numbers for short answer questions
      L1q62 = int(random(1,49));
      L1q71 = int(random(40));
      L1q72 = int(random(90));
      L1q73 = int(random(40));
      L1q81 = int(random(100,200));
      L1q82 = int(random(200));
      L1q83 = int(random(300));
      L1q91 = int(random(5000,6000));
      L1q92 = int(random(3000,5000));
      L1q93 = int(random(3000));
      L1q101 = int(random(90,150));
      L1q102 = int(random(90));
      L1q111 = int(random(70,100));
      L1q112 = int(random(35));
      L1q113 = int(random(35));
      L1q121 = int(random(20,50));
      L1q122 = int(random(30));
      L1q123 = L1q121 + L1q122;
      L1q124 = L1q123 + L1q122;
      L1q131 = int(random(200));
      L1q132 = int(random(300));
      Lesson1Q6 = "If Kenneth has " + L1q61 + " apples and Gary takes away " + L1q62 + " apples, how many apples is Kenneth left with?";
      Lesson1Q7 = "If Justin started with " + L1q71+ " pies then Oscar gave him " + L1q72 + " more pies , but Daniel took "+ L1q73+ " away, how many pies does Justin have?"; 
      Lesson1Q8 = "Ashley bought a big bag of candy. The bag had "+ L1q81 +" blue candies, " + L1q82 + " red candies and " +L1q83 + " green candies. How many candies were there in total?";
      Lesson1Q9 = "Jay is a rich boy, so he starts of with "+L1q91 + " dollars, he is also nice so he gives some money to a few of his friends. Jay gives " + L1q92 + " to Aryan but Aryan isn't greedy so he gives " + L1q93 +" back to Jay. How much money does Jay have?";
      Lesson1Q10 = "Your team scored a total of " + L1q101 + " points. " + L1q102 +" points were scored in the first half. How many were scored in the second half?";
      Lesson1Q11 = "Charlene had a pack of " + L1q111 +" pencil crayons. She gave " + L1q112 +" to her friend Theresa. She gave "+L1q113 +" to her friend Mandy. How many pencil crayons does Charlene have left?";
      Lesson1Q12 = "Each month, Jeremy adds the same number of cards to his baseball card collection. In January, he had " + L1q121 +". " + L1q123 +" in February. " +L1q124 +" in March. How many baseball cards will Jeremy have in April?";
      Lesson1Q13 = "Micha’s dad wants to try to save money on gas, so he has been tracking how much he uses. Last year, Micha’s dad used "+L1q131 +" litres of gas. This year, her dad used "+L1q132+" litres of gas. How much gas did he use in total for the two years?";
      String [] Level1Questions = {Lesson1Q6, Lesson1Q7, Lesson1Q8, Lesson1Q9, Lesson1Q10, Lesson1Q11, Lesson1Q12, Lesson1Q13};
      shortAnswerLevel18 = Level1Questions[int(random(8))];
      random = 1;
  }
    lesson1mc8();
  }
  if (mode == 30){
    if(random == 0){//randomizes when random is 0
      L1q61 = int(random(25,50));//random generation of numbers for short answer questions
      L1q62 = int(random(1,49));
      L1q71 = int(random(40));
      L1q72 = int(random(90));
      L1q73 = int(random(40));
      L1q81 = int(random(100,200));
      L1q82 = int(random(200));
      L1q83 = int(random(300));
      L1q91 = int(random(5000,6000));
      L1q92 = int(random(3000,5000));
      L1q93 = int(random(3000));
      L1q101 = int(random(90,150));
      L1q102 = int(random(90));
      L1q111 = int(random(70,100));
      L1q112 = int(random(35));
      L1q113 = int(random(35));
      L1q121 = int(random(20,50));
      L1q122 = int(random(30));
      L1q123 = L1q121 + L1q122;
      L1q124 = L1q123 + L1q122;
      L1q131 = int(random(200));
      L1q132 = int(random(300));
      Lesson1Q6 = "If Kenneth has " + L1q61 + " apples and Gary takes away " + L1q62 + " apples, how many apples is Kenneth left with?";
      Lesson1Q7 = "If Justin started with " + L1q71+ " pies then Oscar gave him " + L1q72 + " more pies , but Daniel took "+ L1q73+ " away, how many pies does Justin have?"; 
      Lesson1Q8 = "Ashley bought a big bag of candy. The bag had "+ L1q81 +" blue candies, " + L1q82 + " red candies and " +L1q83 + " green candies. How many candies were there in total?";
      Lesson1Q9 = "Jay is a rich boy, so he starts of with "+L1q91 + " dollars, he is also nice so he gives some money to a few of his friends. Jay gives " + L1q92 + " to Aryan but Aryan isn't greedy so he gives " + L1q93 +" back to Jay. How much money does Jay have?";
      Lesson1Q10 = "Your team scored a total of " + L1q101 + " points. " + L1q102 +" points were scored in the first half. How many were scored in the second half?";
      Lesson1Q11 = "Charlene had a pack of " + L1q111 +" pencil crayons. She gave " + L1q112 +" to her friend Theresa. She gave "+L1q113 +" to her friend Mandy. How many pencil crayons does Charlene have left?";
      Lesson1Q12 = "Each month, Jeremy adds the same number of cards to his baseball card collection. In January, he had " + L1q121 +". " + L1q123 +" in February. " +L1q124 +" in March. How many baseball cards will Jeremy have in April?";
      Lesson1Q13 = "Micha’s dad wants to try to save money on gas, so he has been tracking how much he uses. Last year, Micha’s dad used "+L1q131 +" litres of gas. This year, her dad used "+L1q132+" litres of gas. How much gas did he use in total for the two years?";
      String [] Level1Questions = {Lesson1Q6, Lesson1Q7, Lesson1Q8, Lesson1Q9, Lesson1Q10, Lesson1Q11, Lesson1Q12, Lesson1Q13};
      shortAnswerLevel19 = Level1Questions[int(random(8))];
      random = 1;
    }
    lesson1mc9();
    
  }
  if (mode ==31){
    if(random == 0){//randomizes when random is 0
      L1q61 = int(random(25,50));//random generation of numbers for short answer questions
      L1q62 = int(random(1,49));
      L1q71 = int(random(40));
      L1q72 = int(random(90));
      L1q73 = int(random(40));
      L1q81 = int(random(100,200));
      L1q82 = int(random(200));
      L1q83 = int(random(300));
      L1q91 = int(random(5000,6000));
      L1q92 = int(random(3000,5000));
      L1q93 = int(random(3000));
      L1q101 = int(random(90,150));
      L1q102 = int(random(90));
      L1q111 = int(random(70,100));
      L1q112 = int(random(35));
      L1q113 = int(random(35));
      L1q121 = int(random(20,50));
      L1q122 = int(random(30));
      L1q123 = L1q121 + L1q122;
      L1q124 = L1q123 + L1q122;
      L1q131 = int(random(200));
      L1q132 = int(random(300));
      Lesson1Q6 = "If Kenneth has " + L1q61 + " apples and Gary takes away " + L1q62 + " apples, how many apples is Kenneth left with?";
      Lesson1Q7 = "If Justin started with " + L1q71+ " pies then Oscar gave him " + L1q72 + " more pies , but Daniel took "+ L1q73+ " away, how many pies does Justin have?"; 
      Lesson1Q8 = "Ashley bought a big bag of candy. The bag had "+ L1q81 +" blue candies, " + L1q82 + " red candies and " +L1q83 + " green candies. How many candies were there in total?";
      Lesson1Q9 = "Jay is a rich boy, so he starts of with "+L1q91 + " dollars, he is also nice so he gives some money to a few of his friends. Jay gives " + L1q92 + " to Aryan but Aryan isn't greedy so he gives " + L1q93 +" back to Jay. How much money does Jay have?";
      Lesson1Q10 = "Your team scored a total of " + L1q101 + " points. " + L1q102 +" points were scored in the first half. How many were scored in the second half?";
      Lesson1Q11 = "Charlene had a pack of " + L1q111 +" pencil crayons. She gave " + L1q112 +" to her friend Theresa. She gave "+L1q113 +" to her friend Mandy. How many pencil crayons does Charlene have left?";
      Lesson1Q12 = "Each month, Jeremy adds the same number of cards to his baseball card collection. In January, he had " + L1q121 +". " + L1q123 +" in February. " +L1q124 +" in March. How many baseball cards will Jeremy have in April?";
      Lesson1Q13 = "Micha’s dad wants to try to save money on gas, so he has been tracking how much he uses. Last year, Micha’s dad used "+L1q131 +" litres of gas. This year, her dad used "+L1q132+" litres of gas. How much gas did he use in total for the two years?";
      String [] Level1Questions = {Lesson1Q6, Lesson1Q7, Lesson1Q8, Lesson1Q9, Lesson1Q10, Lesson1Q11, Lesson1Q12, Lesson1Q13};
      shortAnswerLevel20 = Level1Questions[int(random(8))];
      random = 1;
    }
    lesson1mc10();
  }
  if (mode == 32){
    score1();
  }
  if(mode ==22){
    lesson2division();
  }
  if(mode ==23){
    if (random ==0){//randomizes when random is 0
      L2q11 = int(random(1,30));//random generation of numbers for short answer questions
      L2q12 = int(random(12));
      L2q21 = int(random(1,12));
      L2q23 = int(random(12));
      L2q23 = int(random(1,12));
      L2q31 = int(random(1,30));
      L2q32 = int(random(1,5));
      L2q41 = int(random(1,50));
      L2q42 = int(random(1,25));
      L2q43 = int(random(1,10));
      L2q51 = int(random(1,100));
      L2q52 = int(random(1,15));
      L2q53 = int(random(1,10));
      Lesson2Q1 = L2q11 + " x " + L2q12 + " =";
      random = 1;
    }
    lesson2mc1();
  }
  if (mode ==24){
    if(random == 0){//randomizes when random is 0
      L2q11 = int(random(1,30));//random generation of numbers for short answer questions
      L2q12 = int(random(12));
      L2q21 = int(random(1,12));
      L2q23 = int(random(12));
      L2q23 = int(random(1,12));
      L2q31 = int(random(1,30));
      L2q32 = int(random(1,5));
      L2q41 = int(random(1,50));
      L2q42 = int(random(1,25));
      L2q43 = int(random(1,10));
      L2q51 = int(random(1,100));
      L2q52 = int(random(1,15));
      L2q53 = int(random(1,10));
      Lesson2Q2 = L2q21 + " x " + L2q22 + " x " + L2q23 + " =";
      random = 1;
    }
    lesson2mc2();
  }
  if (mode ==25){
    if (random ==0){//randomizes when random is 0
      L2q11 = int(random(1,30));//random generation of numbers for short answer questions
      L2q12 = int(random(12));
      L2q21 = int(random(1,12));
      L2q23 = int(random(12));
      L2q23 = int(random(1,12));
      L2q31 = int(random(1,30));
      L2q32 = int(random(1,5));
      L2q41 = int(random(1,50));
      L2q42 = int(random(1,25));
      L2q43 = int(random(1,10));
      L2q51 = int(random(1,100));
      L2q52 = int(random(1,15));
      L2q53 = int(random(1,10));
      Lesson2Q3 = L2q31 + " / " + L2q32 + " =";
      random = 1;
    }
    lesson2mc3();
  }
  if (mode ==26){
    if(random ==0){//randomizes when random is 0
      L2q11 = int(random(1,30));//random generation of numbers for short answer questions
      L2q12 = int(random(12));
      L2q21 = int(random(1,12));
      L2q23 = int(random(12));
      L2q23 = int(random(1,12));
      L2q31 = int(random(1,30));
      L2q32 = int(random(1,5));
      L2q41 = int(random(1,50));
      L2q42 = int(random(1,25));
      L2q43 = int(random(1,10));
      L2q51 = int(random(1,100));
      L2q52 = int(random(1,15));
      L2q53 = int(random(1,10));
      Lesson2Q4 = L2q41 + " x " + L2q42 + " / " + L2q43 + " =";
      random = 1;
    }
    lesson2mc4();
  }
  if (mode ==27){
    if (random == 0){//randomizes when random is 0
      L2q11 = int(random(1,30));//random generation of numbers for short answer questions
      L2q12 = int(random(12));
      L2q21 = int(random(1,12));
      L2q23 = int(random(12));
      L2q23 = int(random(1,12));
      L2q31 = int(random(1,30));
      L2q32 = int(random(1,5));
      L2q41 = int(random(1,50));
      L2q42 = int(random(1,25));
      L2q43 = int(random(1,10));
      L2q51 = int(random(1,100));
      L2q52 = int(random(1,15));
      L2q53 = int(random(1,10));
      Lesson2Q5 = L2q51 + " / " + L2q52 + " / " + L2q53 + " =";
      random = 1;
    }
    lesson2mc5();
  }
  if(mode == 33){
    if (random == 0){//randomizes when random is 0
      L2q61 = int(random(20,50));//random generation of numbers for short answer questions
      L2q62 = int(random(500,1000));
      L2q63 = int(random(10,400));
      L2q71 = int(random(5,20));
      L2q72 = int(random(1,7));
      L2q81 = int(random(100,200));
      L2q82 = int(random(1,50));
      L2q91 = int(random(1,12));
      L2q92 = int(random(2,14));
      L2q101 = int(random(1,10));
      L2q102 = int(random(10,25));
      L2q111 = int(random(50,75));
      L2q112 = int(random(1,30));
      L2q121 = int(random(1,50));
      L2q131 = int(random(400,600));
      L2q132 = int(random(1,200));
      Lesson2Q6 = "Mareson had  "+ L2q61 + " tabs of code and each tab contained " + L2q62 + " lines of code. Mareson optimized his code and took out " + L2q63 + " lines of code from each tab, how many lines of code does Mareson have now?";
      Lesson2Q7 = "Brian is setting up " + L2q71 +" remote control cars. Each car needs " + L2q72 + " batteries to operate. How many batteries in total does Brian need?";
      Lesson2Q8 = "Kyubin loves dogs, she has " + L2q81 +" miniature doggy biscuits. She wants to give them as gifts to each of her " + L2q82 +" dogs. How many biscuits does each doggo get? Round to the nearest whole number";
      Lesson2Q9 = "Ben has three friends who all have " + L2q91 +" toy cars, and then two friends who  have " + L2q92 + " cars. How many cars do Ben's friends have?";
      Lesson2Q10 = "Gary helped his mom prepare fresh lemonade. If each glass is 6 inches high and needs " + L2q101 + " lemons, approximately how many glasses of fresh lemonade can he make if they have " + L2q102 + " lemons?";
      Lesson2Q11 = "Kenneth, Oscar, and Gary have a total of " + L2q111 + " watermelons, if Gary has "+ L2q112+" watermelons, and Oscar and Kenneth have the same amount of watermelons, how many does Kenneth have? Round to the nearest whole number";
      Lesson2Q12 = "Swetlana, Diana, and Ana Maria, share " +L2q121 + " cups of bubble tea equally, how many do each of them get? Round to the nearest whole number";
      Lesson2Q13 = "Alan is a reckless driver and drove "+L2q131 +" km in " +L2q132 + " minutes, what was is speed in km per minute? Round to the nearest whole number";
      String[] Level2Questions = {Lesson2Q6, Lesson2Q7, Lesson2Q8, Lesson2Q9, Lesson2Q10, Lesson2Q11, Lesson2Q12, Lesson2Q13};
      shortAnswerLevel26 = Level2Questions[int(random(8))];
      random = 1;
    }
    lesson2mc6();
  }
  if(mode ==34){
    if (random == 0){//randomizes when random is 0
      L2q61 = int(random(20,50));//random generation of numbers for short answer questions
      L2q62 = int(random(500,1000));
      L2q63 = int(random(10,400));
      L2q71 = int(random(5,20));
      L2q72 = int(random(1,7));
      L2q81 = int(random(100,200));
      L2q82 = int(random(1,50));
      L2q91 = int(random(1,12));
      L2q92 = int(random(2,14));
      L2q101 = int(random(1,10));
      L2q102 = int(random(10,25));
      L2q111 = int(random(50,75));
      L2q112 = int(random(1,30));
      L2q121 = int(random(1,50));
      L2q131 = int(random(400,600));
      L2q132 = int(random(1,200));
      Lesson2Q6 = "Mareson had  "+ L2q61 + " tabs of code and each tab contained " + L2q62 + " lines of code. Mareson optimized his code and took out " + L2q63 + " lines of code from each tab, how many lines of code does Mareson have now?";
      Lesson2Q7 = "Brian is setting up " + L2q71 +" remote control cars. Each car needs " + L2q72 + " batteries to operate. How many batteries in total does Brian need?";
      Lesson2Q8 = "Kyubin loves dogs, she has " + L2q81 +" miniature doggy biscuits. She wants to give them as gifts to each of her " + L2q82 +" dogs. How many biscuits does each doggo get? Round to the nearest whole number";
      Lesson2Q9 = "Ben has three friends who all have " + L2q91 +" toy cars, and then two friends who  have " + L2q92 + " cars. How many cars do Ben's friends have?";
      Lesson2Q10 = "Gary helped his mom prepare fresh lemonade. If each glass is 6 inches high and needs " + L2q101 + " lemons, approximately how many glasses of fresh lemonade can he make if they have " + L2q102 + " lemons?";
      Lesson2Q11 = "Kenneth, Oscar, and Gary have a total of " + L2q111 + " watermelons, if Gary has "+ L2q112+" watermelons, and Oscar and Kenneth have the same amount of watermelons, how many does Kenneth have? Round to the nearest whole number";
      Lesson2Q12 = "Swetlana, Diana, and Ana Maria, share " +L2q121 + " cups of bubble tea equally, how many do each of them get? Round to the nearest whole number";
      Lesson2Q13 = "Alan is a reckless driver and drove "+L2q131 +" km in " +L2q132 + " minutes, what was is speed in km per minute? Round to the nearest whole number";
      String[] Level2Questions = {Lesson2Q6, Lesson2Q7, Lesson2Q8, Lesson2Q9, Lesson2Q10, Lesson2Q11, Lesson2Q12, Lesson2Q13};
      shortAnswerLevel27 = Level2Questions[int(random(8))];
      random = 1;
    }
    lesson2mc7();
  }
  if(mode==35){
    if (random == 0){//randomizes when random is 0
      L2q61 = int(random(20,50));//random generation of numbers for short answer questions
      L2q62 = int(random(500,1000));
      L2q63 = int(random(10,400));
      L2q71 = int(random(5,20));
      L2q72 = int(random(1,7));
      L2q81 = int(random(100,200));
      L2q82 = int(random(1,50));
      L2q91 = int(random(1,12));
      L2q92 = int(random(2,14));
      L2q101 = int(random(1,10));
      L2q102 = int(random(10,25));
      L2q111 = int(random(50,75));
      L2q112 = int(random(1,30));
      L2q121 = int(random(1,50));
      L2q131 = int(random(400,600));
      L2q132 = int(random(1,200));
      Lesson2Q6 = "Mareson had  "+ L2q61 + " tabs of code and each tab contained " + L2q62 + " lines of code. Mareson optimized his code and took out " + L2q63 + " lines of code from each tab, how many lines of code does Mareson have now?";
      Lesson2Q7 = "Brian is setting up " + L2q71 +" remote control cars. Each car needs " + L2q72 + " batteries to operate. How many batteries in total does Brian need?";
      Lesson2Q8 = "Kyubin loves dogs, she has " + L2q81 +" miniature doggy biscuits. She wants to give them as gifts to each of her " + L2q82 +" dogs. How many biscuits does each doggo get? Round to the nearest whole number";
      Lesson2Q9 = "Ben has three friends who all have " + L2q91 +" toy cars, and then two friends who  have " + L2q92 + " cars. How many cars do Ben's friends have?";
      Lesson2Q10 = "Gary helped his mom prepare fresh lemonade. If each glass is 6 inches high and needs " + L2q101 + " lemons, approximately how many glasses of fresh lemonade can he make if they have " + L2q102 + " lemons?";
      Lesson2Q11 = "Kenneth, Oscar, and Gary have a total of " + L2q111 + " watermelons, if Gary has "+ L2q112+" watermelons, and Oscar and Kenneth have the same amount of watermelons, how many does Kenneth have? Round to the nearest whole number";
      Lesson2Q12 = "Swetlana, Diana, and Ana Maria, share " +L2q121 + " cups of bubble tea equally, how many do each of them get? Round to the nearest whole number";
      Lesson2Q13 = "Alan is a reckless driver and drove "+L2q131 +" km in " +L2q132 + " minutes, what was is speed in km per minute? Round to the nearest whole number";
      String[] Level2Questions = {Lesson2Q6, Lesson2Q7, Lesson2Q8, Lesson2Q9, Lesson2Q10, Lesson2Q11, Lesson2Q12, Lesson2Q13};
      shortAnswerLevel28 = Level2Questions[int(random(8))];
      random = 1;
    }
    lesson2mc8();
  }
  if(mode==36){
    if (random == 0){//randomizes when random is 0
      L2q61 = int(random(20,50));//random generation of numbers for short answer questions
      L2q62 = int(random(500,1000));
      L2q63 = int(random(10,400));
      L2q71 = int(random(5,20));
      L2q72 = int(random(1,7));
      L2q81 = int(random(100,200));
      L2q82 = int(random(1,50));
      L2q91 = int(random(1,12));
      L2q92 = int(random(2,14));
      L2q101 = int(random(1,10));
      L2q102 = int(random(10,25));
      L2q111 = int(random(50,75));
      L2q112 = int(random(1,30));
      L2q121 = int(random(1,50));
      L2q131 = int(random(400,600));
      L2q132 = int(random(1,200));
      Lesson2Q6 = "Mareson had  "+ L2q61 + " tabs of code and each tab contained " + L2q62 + " lines of code. Mareson optimized his code and took out " + L2q63 + " lines of code from each tab, how many lines of code does Mareson have now?";
      Lesson2Q7 = "Brian is setting up " + L2q71 +" remote control cars. Each car needs " + L2q72 + " batteries to operate. How many batteries in total does Brian need?";
      Lesson2Q8 = "Kyubin loves dogs, she has " + L2q81 +" miniature doggy biscuits. She wants to give them as gifts to each of her " + L2q82 +" dogs. How many biscuits does each doggo get? Round to the nearest whole number";
      Lesson2Q9 = "Ben has three friends who all have " + L2q91 +" toy cars, and then two friends who  have " + L2q92 + " cars. How many cars do Ben's friends have?";
      Lesson2Q10 = "Gary helped his mom prepare fresh lemonade. If each glass is 6 inches high and needs " + L2q101 + " lemons, approximately how many glasses of fresh lemonade can he make if they have " + L2q102 + " lemons?";
      Lesson2Q11 = "Kenneth, Oscar, and Gary have a total of " + L2q111 + " watermelons, if Gary has "+ L2q112+" watermelons, and Oscar and Kenneth have the same amount of watermelons, how many does Kenneth have? Round to the nearest whole number";
      Lesson2Q12 = "Swetlana, Diana, and Ana Maria, share " +L2q121 + " cups of bubble tea equally, how many do each of them get? Round to the nearest whole number";
      Lesson2Q13 = "Alan is a reckless driver and drove "+L2q131 +" km in " +L2q132 + " minutes, what was is speed in km per minute? Round to the nearest whole number";
      String[] Level2Questions = {Lesson2Q6, Lesson2Q7, Lesson2Q8, Lesson2Q9, Lesson2Q10, Lesson2Q11, Lesson2Q12, Lesson2Q13};
      shortAnswerLevel29 = Level2Questions[int(random(8))];
      random = 1;
    }
    lesson2mc9();
  }
  if(mode ==37){
    if (random == 0){//randomizes when random is 0
      L2q61 = int(random(20,50));//random generation of numbers for short answer questions
      L2q62 = int(random(500,1000));
      L2q63 = int(random(10,400));
      L2q71 = int(random(5,20));
      L2q72 = int(random(1,7));
      L2q81 = int(random(100,200));
      L2q82 = int(random(1,50));
      L2q91 = int(random(1,12));
      L2q92 = int(random(2,14));
      L2q101 = int(random(1,10));
      L2q102 = int(random(10,25));
      L2q111 = int(random(50,75));
      L2q112 = int(random(1,30));
      L2q121 = int(random(1,50));
      L2q131 = int(random(400,600));
      L2q132 = int(random(1,200));
      Lesson2Q6 = "Mareson had  "+ L2q61 + " tabs of code and each tab contained " + L2q62 + " lines of code. Mareson optimized his code and took out " + L2q63 + " lines of code from each tab, how many lines of code does Mareson have now?";
      Lesson2Q7 = "Brian is setting up " + L2q71 +" remote control cars. Each car needs " + L2q72 + " batteries to operate. How many batteries in total does Brian need?";
      Lesson2Q8 = "Kyubin loves dogs, she has " + L2q81 +" miniature doggy biscuits. She wants to give them as gifts to each of her " + L2q82 +" dogs. How many biscuits does each doggo get? Round to the nearest whole number";
      Lesson2Q9 = "Ben has three friends who all have " + L2q91 +" toy cars, and then two friends who  have " + L2q92 + " cars. How many cars do Ben's friends have?";
      Lesson2Q10 = "Gary helped his mom prepare fresh lemonade. If each glass is 6 inches high and needs " + L2q101 + " lemons, approximately how many glasses of fresh lemonade can he make if they have " + L2q102 + " lemons?";
      Lesson2Q11 = "Kenneth, Oscar, and Gary have a total of " + L2q111 + " watermelons, if Gary has "+ L2q112+" watermelons, and Oscar and Kenneth have the same amount of watermelons, how many does Kenneth have? Round to the nearest whole number";
      Lesson2Q12 = "Swetlana, Diana, and Ana Maria, share " +L2q121 + " cups of bubble tea equally, how many do each of them get? Round to the nearest whole number";
      Lesson2Q13 = "Alan is a reckless driver and drove "+L2q131 +" km in " +L2q132 + " minutes, what was is speed in km per minute? Round to the nearest whole number";
      String[] Level2Questions = {Lesson2Q6, Lesson2Q7, Lesson2Q8, Lesson2Q9, Lesson2Q10, Lesson2Q11, Lesson2Q12, Lesson2Q13};
      shortAnswerLevel30 = Level2Questions[int(random(8))];
      random = 1;
    }
    lesson2mc10();
  }
  if(mode ==38){
    score2();
  }
  if (mode == 13){
    lesson3bedmas();
  }
  if (mode == 39){
    lesson3average();
  }
  if (mode == 14){
    if(random ==0){//randomizes when random is 0
      L3q11 = int(random(1,30));//random generation of numbers for short answer questions
      L3q12 = int(random(1,30));
      L3q13 = int(random(1,30));
      L3q21 = int(random(30,60));
      L3q21 = int(random(1,30));
      L3q21 = int(random(1,30));
      L3q31 = int(random(1,20));
      L3q32 = int(random(40,90));
      L3q33 = int(random(1,30));
      L3q34 = int(random(1,30));
      L3q35 = int(random(2,3));
      L3q41 = int(random(40,70));
      L3q42 = int(random(1,20));
      L3q43 = int(random(20,40));
      L3q44 = int(random(1,10));
      L3q45 = int(random(10,20));
      L3q46 = int(random(1,3));
      L3q51 = int(random(90,120));
      L3q52 = int(random(20,50));
      L3q53 = int(random(1,20));
      L3q54 = int(random(50,80));
      L3q55 = int(random(50,80));
      L3q56 = int(random(80,90));
      Lesson3Q1 = "( " + L3q11 + " + " + L3q12 + " ) x " + L3q13;
      random = 1;
    }
    lesson3mc1();
  }
  if (mode ==41){
    if (random ==0){//randomizes when random is 0
      L3q11 = int(random(1,30));//random generation of numbers for short answer questions
      L3q12 = int(random(1,30));
      L3q13 = int(random(1,30));
      L3q21 = int(random(30,60));
      L3q21 = int(random(1,30));
      L3q21 = int(random(1,30));
      L3q31 = int(random(1,20));
      L3q32 = int(random(40,90));
      L3q33 = int(random(1,30));
      L3q34 = int(random(1,30));
      L3q35 = int(random(2,3));
      L3q41 = int(random(40,70));
      L3q42 = int(random(1,20));
      L3q43 = int(random(20,40));
      L3q44 = int(random(1,10));
      L3q45 = int(random(10,20));
      L3q46 = int(random(1,3));
      L3q51 = int(random(90,120));
      L3q52 = int(random(20,50));
      L3q53 = int(random(1,20));
      L3q54 = int(random(50,80));
      L3q55 = int(random(50,80));
      L3q56 = int(random(80,90));
      Lesson3Q2 =  L3q21 + " - " + L3q22 + " x " + L3q23;
      random = 1;
    }
    lesson3mc2();
  }
  if (mode ==42){
    if (random == 0){//randomizes when random is 0
      L3q11 = int(random(1,30));//random generation of numbers for short answer questions
      L3q12 = int(random(1,30));
      L3q13 = int(random(1,30));
      L3q21 = int(random(30,60));
      L3q21 = int(random(1,30));
      L3q21 = int(random(1,30));
      L3q31 = int(random(1,20));
      L3q32 = int(random(40,90));
      L3q33 = int(random(1,30));
      L3q34 = int(random(1,30));
      L3q35 = int(random(2,3));
      L3q41 = int(random(40,70));
      L3q42 = int(random(1,20));
      L3q43 = int(random(20,40));
      L3q44 = int(random(1,10));
      L3q45 = int(random(10,20));
      L3q46 = int(random(1,3));
      L3q51 = int(random(90,120));
      L3q52 = int(random(20,50));
      L3q53 = int(random(1,20));
      L3q54 = int(random(50,80));
      L3q55 = int(random(50,80));
      L3q56 = int(random(80,90));
      Lesson3Q3 = L3q31 + " x ( " + L3q32 + " – " + L3q33 + " ) + " + L3q34 + " / ( " + L3q35 + " + 2)";
      random = 1;
    }
    lesson3mc3();
  }
  if (mode == 43){
    if (random ==0){//randomizes when random is 0
      L3q11 = int(random(1,30));//random generation of numbers for short answer questions
      L3q12 = int(random(1,30));
      L3q13 = int(random(1,30));
      L3q21 = int(random(30,60));
      L3q21 = int(random(1,30));
      L3q21 = int(random(1,30));
      L3q31 = int(random(1,20));
      L3q32 = int(random(40,90));
      L3q33 = int(random(1,30));
      L3q34 = int(random(1,30));
      L3q35 = int(random(2,3));
      L3q41 = int(random(40,70));
      L3q42 = int(random(1,20));
      L3q43 = int(random(20,40));
      L3q44 = int(random(1,10));
      L3q45 = int(random(10,20));
      L3q46 = int(random(1,3));
      L3q51 = int(random(90,120));
      L3q52 = int(random(20,50));
      L3q53 = int(random(1,20));
      L3q54 = int(random(50,80));
      L3q55 = int(random(50,80));
      L3q56 = int(random(80,90));
      Lesson3Q4 = L3q41 + " - " + L3q42 + " + " + L3q43 + " + " + L3q44 + " x ( " + L3q45 + " / " + L3q46 + " ) ";
      random = 1;
        }
    lesson3mc4();
  }
  if (mode == 44){
    if (random ==0){//randomizes when random is 0
      L3q11 = int(random(1,30));//random generation of numbers for short answer questions
      L3q12 = int(random(1,30));
      L3q13 = int(random(1,30));
      L3q21 = int(random(30,60));
      L3q21 = int(random(1,30));
      L3q21 = int(random(1,30));
      L3q31 = int(random(1,20));
      L3q32 = int(random(40,90));
      L3q33 = int(random(1,30));
      L3q34 = int(random(1,30));
      L3q35 = int(random(2,3));
      L3q41 = int(random(40,70));
      L3q42 = int(random(1,20));
      L3q43 = int(random(20,40));
      L3q44 = int(random(1,10));
      L3q45 = int(random(10,20));
      L3q46 = int(random(1,3));
      L3q51 = int(random(90,120));
      L3q52 = int(random(20,50));
      L3q53 = int(random(1,20));
      L3q54 = int(random(50,80));
      L3q55 = int(random(50,80));
      L3q56 = int(random(80,90));
      Lesson3Q5 = "( " + L3q51 + " - " + L3q52 + " ) x " + L3q53 +" + " + L3q54 + " + " + L3q55 + " - " + L3q56;
      random = 1;
    }
    lesson3mc5();
  }
  if (mode ==45){
    if (random == 0){//randomizes when random is 0
      L3q61 = int(random(80,100));//random generation of numbers for short answer questions
      L3q62 = int(random(70,100));
      L3q71 = int(random(70,85));
      L3q72 = int(random(86,95));
      L3q81 = int(random(50,70));
      L3q82 = int(random(90,120));
      L3q91 = int(random(20,70));
      L3q92 = int(random(20,80));
      L3q93 = int(random(30,60));
      L3q94 = int(random(30,60));
      L3q101 = int(random(20,100));
      L3q111 = int(random(10,50));
      L3q121 = int(random(1000,2000));
      L3q122 = int(random(10,30));
      L3q123 = int(random(10,35));
      L3q131 = int(random(1,5));
      L3q132 = int(random(50,70));
      Lesson3Q6 = "Timothy's average score on the first 4 tests was " + L3q61 + ". On the next 5 tests his average score was " + L3q62 + ". What was his average score on all 9 tests? Round to the nearest whole number";
      Lesson3Q7 = "After taking 3 quizzes, your average is " + L3q71 + " out of 100. What must your average be on the 5 quizzes to increase your average to " + L1q72 + " ? Round to the nearest whole number";
      Lesson3Q8 = "A family took 3 hours to drive from Toronto to London at a speed of " + L3q81 + " km per hour. Then they took 1 hour at a speed of " + L3q82 + " km per hour to get to Sudbury. What was their average speed for the whole trip? Round to the nearest whole number";
      Lesson3Q9 = "The average of " + L3q91 + " numbers is " + L3q92 + ". If two numbers, namely, " + L3q93 + " & " + L3q94 + " are discarded from the set of number, then find average of the remaining numbers. Round to the nearest whole number";
      Lesson3Q10 = "Find the average of the first " + L3q101 + " natural numbers. Round to the nearest whole number";
      Lesson3Q11 = "Find the average of first " + L3q111 + " whole numbers. Round to the nearest whole number";
      Lesson3Q12 = "The average of " + L3q121 + " numbers is " + L3q122 +". If each number is multiplied by " + L3q123 + ", then find the average of the new set of numbers.";
      Lesson3Q13 = "The average weight of 8 people increases by " + L3q131 + " kg when a new person comes in place of one of them weighing " + L3q132+ " kg. What might be the weight of the new person ? Round to the nearest whole number";
      String [] Level3Questions = {Lesson3Q6,Lesson3Q7,Lesson3Q8,Lesson3Q9,Lesson3Q10,Lesson3Q11,Lesson3Q12,Lesson3Q13};
      shortAnswerLevel36 = Level3Questions[int(random(8))];
      random = 1;
    }
    lesson3mc6();
  }
  if (mode == 46){
    if (random ==0){//randomizes when random is 0
      L3q61 = int(random(80,100));//random generation of numbers for short answer questions
      L3q62 = int(random(70,100));
      L3q71 = int(random(70,85));
      L3q72 = int(random(86,95));
      L3q81 = int(random(50,70));
      L3q82 = int(random(90,120));
      L3q91 = int(random(20,70));
      L3q92 = int(random(20,80));
      L3q93 = int(random(30,60));
      L3q94 = int(random(30,60));
      L3q101 = int(random(20,100));
      L3q111 = int(random(10,50));
      L3q121 = int(random(1000,2000));
      L3q122 = int(random(10,30));
      L3q123 = int(random(10,35));
      L3q131 = int(random(1,5));
      L3q132 = int(random(50,70));
      Lesson3Q6 = "Timothy's average score on the first 4 tests was " + L3q61 + ". On the next 5 tests his average score was " + L3q62 + ". What was his average score on all 9 tests? Round to the nearest whole number";
      Lesson3Q7 = "After taking 3 quizzes, your average is " + L3q71 + " out of 100. What must your average be on the 5 quizzes to increase your average to " + L1q72 + " ? Round to the nearest whole number";
      Lesson3Q8 = "A family took 3 hours to drive from Toronto to London at a speed of " + L3q81 + " km per hour. Then they took 1 hour at a speed of " + L3q82 + " km per hour to get to Sudbury. What was their average speed for the whole trip? Round to the nearest whole number";
      Lesson3Q9 = "The average of " + L3q91 + " numbers is " + L3q92 + ". If two numbers, namely, " + L3q93 + " & " + L3q94 + " are discarded from the set of number, then find average of the remaining numbers. Round to the nearest whole number";
      Lesson3Q10 = "Find the average of the first " + L3q101 + " natural numbers. Round to the nearest whole number";
      Lesson3Q11 = "Find the average of first " + L3q111 + " whole numbers. Round to the nearest whole number";
      Lesson3Q12 = "The average of " + L3q121 + " numbers is " + L3q122 +". If each number is multiplied by " + L3q123 + ", then find the average of the new set of numbers.";
      Lesson3Q13 = "The average weight of 8 people increases by " + L3q131 + " kg when a new person comes in place of one of them weighing " + L3q132+ " kg. What might be the weight of the new person ? Round to the nearest whole number";
      String [] Level3Questions = {Lesson3Q6,Lesson3Q7,Lesson3Q8,Lesson3Q9,Lesson3Q10,Lesson3Q11,Lesson3Q12,Lesson3Q13};
      shortAnswerLevel37 = Level3Questions[int(random(8))];
      random = 1;
    }
    lesson3mc7();
  }
  if (mode ==47){
    if(random ==0){//randomizes when random is 0
      L3q61 = int(random(80,100));//random generation of numbers for short answer questions
      L3q62 = int(random(70,100));
      L3q71 = int(random(70,85));
      L3q72 = int(random(86,95));
      L3q81 = int(random(50,70));
      L3q82 = int(random(90,120));
      L3q91 = int(random(20,70));
      L3q92 = int(random(20,80));
      L3q93 = int(random(30,60));
      L3q94 = int(random(30,60));
      L3q101 = int(random(20,100));
      L3q111 = int(random(10,50));
      L3q121 = int(random(1000,2000));
      L3q122 = int(random(10,30));
      L3q123 = int(random(10,35));
      L3q131 = int(random(1,5));
      L3q132 = int(random(50,70));
      Lesson3Q6 = "Timothy's average score on the first 4 tests was " + L3q61 + ". On the next 5 tests his average score was " + L3q62 + ". What was his average score on all 9 tests? Round to the nearest whole number";
      Lesson3Q7 = "After taking 3 quizzes, your average is " + L3q71 + " out of 100. What must your average be on the 5 quizzes to increase your average to " + L1q72 + " ? Round to the nearest whole number";
      Lesson3Q8 = "A family took 3 hours to drive from Toronto to London at a speed of " + L3q81 + " km per hour. Then they took 1 hour at a speed of " + L3q82 + " km per hour to get to Sudbury. What was their average speed for the whole trip? Round to the nearest whole number";
      Lesson3Q9 = "The average of " + L3q91 + " numbers is " + L3q92 + ". If two numbers, namely, " + L3q93 + " & " + L3q94 + " are discarded from the set of number, then find average of the remaining numbers. Round to the nearest whole number";
      Lesson3Q10 = "Find the average of the first " + L3q101 + " natural numbers. Round to the nearest whole number";
      Lesson3Q11 = "Find the average of first " + L3q111 + " whole numbers. Round to the nearest whole number";
      Lesson3Q12 = "The average of " + L3q121 + " numbers is " + L3q122 +". If each number is multiplied by " + L3q123 + ", then find the average of the new set of numbers.";
      Lesson3Q13 = "The average weight of 8 people increases by " + L3q131 + " kg when a new person comes in place of one of them weighing " + L3q132+ " kg. What might be the weight of the new person ? Round to the nearest whole number";
      String [] Level3Questions = {Lesson3Q6,Lesson3Q7,Lesson3Q8,Lesson3Q9,Lesson3Q10,Lesson3Q11,Lesson3Q12,Lesson3Q13};
      shortAnswerLevel38 = Level3Questions[int(random(8))];
      random = 1;
    }
    lesson3mc8();
  }
  if (mode ==48){
    if (random == 0){//randomizes when random is 0
      L3q61 = int(random(80,100));//random generation of numbers for short answer questions
      L3q62 = int(random(70,100));
      L3q71 = int(random(70,85));
      L3q72 = int(random(86,95));
      L3q81 = int(random(50,70));
      L3q82 = int(random(90,120));
      L3q91 = int(random(20,70));
      L3q92 = int(random(20,80));
      L3q93 = int(random(30,60));
      L3q94 = int(random(30,60));
      L3q101 = int(random(20,100));
      L3q111 = int(random(10,50));
      L3q121 = int(random(1000,2000));
      L3q122 = int(random(10,30));
      L3q123 = int(random(10,35));
      L3q131 = int(random(1,5));
      L3q132 = int(random(50,70));
      Lesson3Q6 = "Timothy's average score on the first 4 tests was " + L3q61 + ". On the next 5 tests his average score was " + L3q62 + ". What was his average score on all 9 tests? Round to the nearest whole number";
      Lesson3Q7 = "After taking 3 quizzes, your average is " + L3q71 + " out of 100. What must your average be on the 5 quizzes to increase your average to " + L1q72 + " ? Round to the nearest whole number";
      Lesson3Q8 = "A family took 3 hours to drive from Toronto to London at a speed of " + L3q81 + " km per hour. Then they took 1 hour at a speed of " + L3q82 + " km per hour to get to Sudbury. What was their average speed for the whole trip? Round to the nearest whole number";
      Lesson3Q9 = "The average of " + L3q91 + " numbers is " + L3q92 + ". If two numbers, namely, " + L3q93 + " & " + L3q94 + " are discarded from the set of number, then find average of the remaining numbers. Round to the nearest whole number";
      Lesson3Q10 = "Find the average of the first " + L3q101 + " natural numbers. Round to the nearest whole number";
      Lesson3Q11 = "Find the average of first " + L3q111 + " whole numbers. Round to the nearest whole number";
      Lesson3Q12 = "The average of " + L3q121 + " numbers is " + L3q122 +". If each number is multiplied by " + L3q123 + ", then find the average of the new set of numbers.";
      Lesson3Q13 = "The average weight of 8 people increases by " + L3q131 + " kg when a new person comes in place of one of them weighing " + L3q132+ " kg. What might be the weight of the new person ? Round to the nearest whole number";
      String [] Level3Questions = {Lesson3Q6,Lesson3Q7,Lesson3Q8,Lesson3Q9,Lesson3Q10,Lesson3Q11,Lesson3Q12,Lesson3Q13};
      shortAnswerLevel39 = Level3Questions[int(random(8))];
      random = 1;
    }
    lesson3mc9();
  }
  if (mode ==49){
    if (random ==0){//randomizes when random is 0
      L3q61 = int(random(80,100));//random generation of numbers for short answer questions
      L3q62 = int(random(70,100));
      L3q71 = int(random(70,85));
      L3q72 = int(random(86,95));
      L3q81 = int(random(50,70));
      L3q82 = int(random(90,120));
      L3q91 = int(random(20,70));
      L3q92 = int(random(20,80));
      L3q93 = int(random(30,60));
      L3q94 = int(random(30,60));
      L3q101 = int(random(20,100));
      L3q111 = int(random(10,50));
      L3q121 = int(random(1000,2000));
      L3q122 = int(random(10,30));
      L3q123 = int(random(10,35));
      L3q131 = int(random(1,5));
      L3q132 = int(random(50,70));
      Lesson3Q6 = "Timothy's average score on the first 4 tests was " + L3q61 + ". On the next 5 tests his average score was " + L3q62 + ". What was his average score on all 9 tests? Round to the nearest whole number";
      Lesson3Q7 = "After taking 3 quizzes, your average is " + L3q71 + " out of 100. What must your average be on the 5 quizzes to increase your average to " + L1q72 + " ? Round to the nearest whole number";
      Lesson3Q8 = "A family took 3 hours to drive from Toronto to London at a speed of " + L3q81 + " km per hour. Then they took 1 hour at a speed of " + L3q82 + " km per hour to get to Sudbury. What was their average speed for the whole trip? Round to the nearest whole number";
      Lesson3Q9 = "The average of " + L3q91 + " numbers is " + L3q92 + ". If two numbers, namely, " + L3q93 + " & " + L3q94 + " are discarded from the set of number, then find average of the remaining numbers. Round to the nearest whole number";
      Lesson3Q10 = "Find the average of the first " + L3q101 + " natural numbers. Round to the nearest whole number";
      Lesson3Q11 = "Find the average of first " + L3q111 + " whole numbers. Round to the nearest whole number";
      Lesson3Q12 = "The average of " + L3q121 + " numbers is " + L3q122 +". If each number is multiplied by " + L3q123 + ", then find the average of the new set of numbers.";
      Lesson3Q13 = "The average weight of 8 people increases by " + L3q131 + " kg when a new person comes in place of one of them weighing " + L3q132+ " kg. What might be the weight of the new person ? Round to the nearest whole number";
      String [] Level3Questions = {Lesson3Q6,Lesson3Q7,Lesson3Q8,Lesson3Q9,Lesson3Q10,Lesson3Q11,Lesson3Q12,Lesson3Q13};
      shortAnswerLevel40 = Level3Questions[int(random(8))];
      random = 1;
    }
    lesson3mc10();
  }
  if (mode ==50){
    score3();
  }
}


  
void title() {
  if(x > 750){//condition to tell the animation when to stop
    x-=5;//difference in x coordinates for left to right motion
    x2+=5;//difference in x coordinates for right to left motion
    y-=5;//difference in y coordinates for bottom to top motion
  background(#FF8C00);//background orange
  textFont(titleFont);//set font
  fill(0);
  textSize(90);
  text("Math Tutor", 345, 135, 300, 200);
  textFont(title2Font);//set font
  textSize(32);
  text("Simple Arithmetic", 345, 370);
  
  pushMatrix();//animation of the addition symbol
  translate(20+x,0);
  rotate(radians(25));//rotation
  image(addition,0,45,width/8,height/6);
  popMatrix();
  
  pushMatrix();//animation of the subtraction symbol
  translate(25+x2,0);
  rotate(radians(-25));
  image(subtraction,0,75,width/6,height/4);
  popMatrix();
  
  pushMatrix();//animation of division symbol
  translate(260+x2,0);
  rotate(radians(30));
  image(division,0,225,width/6,height/5);
  popMatrix();
  
  pushMatrix();//animation of the square root symbol
  translate(-25+x2,0);
  rotate(radians(-17));
  image(sqrRoot,0,480,width/6,height/4);
  popMatrix();
  
  pushMatrix();//animation of the equal symbol
  translate(90+x,0);
  rotate(radians(10));
  image(equal,0,215,width/6,height/4);
  popMatrix();
  
  pushMatrix();//animation of the pi symbol
  translate(-120+x,0);
  rotate(radians(-15));
  image(pi,0,475,width/8,height/6);
  popMatrix();
  
  pushMatrix();//animation of the sigma sign
  translate(0,140+y);
  rotate(radians(-20));
  image(sigma,450,0,width/12,height/6);
  popMatrix();
  
  }
  else{
   textFont(subFont);
   textSize(20);
   text("Click anywhere to continue",350,600);
 
   if (mousePressed){//checkmouse is pressed
     pressed = 1;
   }
   if(mousePressed == false && pressed == 1){//check is mouse clicked
       mode = 1;
       pressed = 0;
   }
   
  }
  
    
}

  
void intructions() {
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Instructions", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);//imported image of the blackboard
  textFont(subFont);
  textSize(30);
  fill(255);
  text("This program will teach you basic arithmetic then test your understanding. There are ten different questions per each of the levels.",195,175,600,300);
  textFont(sub2Font);
  textSize(45);
  text("Click anywhere to continue", 225,375,550,200);

  if(mousePressed){//check mouse pressed
    pressed = 1;
  }
  if(mousePressed == false && pressed == 1){//check is mouse clicked
     mode = 2;//sets the next screen
     pressed = 0;
  }
}
  
void decisionCheck(){
  background(#FF8C00);
  textAlign(LEFT);
  image(blackboard,40,40, width/1.1, height/1.1);
  fill(#FF8C00);
  rect(315,140,375,150,20);//rectangle for the user to click
  rect(315,350,375,150,20);
  fill(0);
  textFont(subFont);
  textSize(70);
  text("PLAY",395,235);
  text("EXIT",405,447);
  if(mousePressed && mouseX >= 315 && mouseX <= 690 && mouseY >=140 && mouseY <= 290){//check mouse is pressed and in right location
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 315 && mouseX <= 690 && mouseY >= 350 && mouseY <= 500){
    pressed = 2;
  }
  
  if (mouseX >= 315 && mouseX <= 690 && mouseY >=140 && mouseY <= 290){//check mouse is released in the right location
      if(mousePressed == false && pressed == 1){//check is mouse clicked
         mode = 3;
         pressed = 0;
     }
  }
  else if(mouseX >= 315 && mouseX <= 690 && mouseY >= 350 && mouseY <= 500){
      if(mousePressed ==false && pressed ==2){//check is mouse clicked
        mode = 4;
        pressed = 0;
    }
  }
  
   
}
  
void levels(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Levels", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textFont(subFont);
  textSize(30);
  fill(255);
  text("Your journey begins now, select your level and begin!!",219,250,550,300);
  fill(#FF8C00);
  rect(210,375,175,80,20);//rectangle for the user to press
  rect(410,375,175,80,20);
  rect(610,375,175,80,20);
  fill(#1F37FF);
  textFont(sub2Font);
  textSize(30);
  text("Level 1", 295,423);
  text("Level 2", 495,423);
  text("Level 3", 695,423);
  image(apple,5,5,width/16,height/10);//apple image for the back button
  fill(255);
  textFont(sub2Font);
  textSize(20);
  text("Back",35,50);
  if(mousePressed && mouseX >= 210 && mouseX <= 385 && mouseY >= 375 && mouseY <= 455){//check mouse is pressed and in right position
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 410 && mouseX <= 585 && mouseY >= 375 && mouseY <= 455){
    pressed = 2;
  }
  else if(mousePressed && mouseX >= 610 && mouseX <= 785 && mouseY >= 375 && mouseY <= 455){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){
    pressed = 4;
  }
  if (mouseX >= 210 && mouseX <= 385 && mouseY >= 375 && mouseY <= 455){//check mouse is released in the right position
      if(mousePressed == false && pressed == 1){//check is mouse clicked
         mode = 6;
         pressed = 0;
      }
  }
  else if(mouseX >= 410 && mouseX <= 585 && mouseY >= 375 && mouseY <= 455){
    if(mousePressed == false && pressed == 2){//check is mouse clicked
          mode = 7;
          pressed = 0;
    }
  }
  else if(mouseX >= 610 && mouseX <= 785 && mouseY >= 375 && mouseY <= 455){
    if(mousePressed == false && pressed == 3){//check is mouse clicked
        mode = 8;
        pressed = 0;
    }
  }
  else if(mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){
    if(mousePressed ==false && pressed == 4){//check is mouse clicked
      mode = 2;
      pressed = 0;
    }
  }

  
  
  
  
 }
  
void levelMenu1(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Level 1 Menu", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textFont(subFont);
  fill(255);
  textSize(25);
  text("Continue with lesson: ",500,200);
  text("Skip to quiz: ",500,400);
  fill(#FF8C00);
  rect(324,225,350,100,20);
  rect(324,425,350,100,20);
  fill(0);
  textSize(50);
  text("Lesson",500,290);
  text("Quiz",492,490);
  image(apple,5,5,width/16,height/10);
  fill(255);
  textFont(sub2Font);
  textSize(20);
  text("Back",35,50);
  if(mousePressed && mouseX >= 324 && mouseX <= 674 && mouseY >= 225 && mouseY <= 325){//check mouse is pressed in right position
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 324 && mouseX <= 674 && mouseY >= 425 && mouseY <= 525){
    pressed = 2;
  }
  else if(mousePressed && mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){
    pressed = 3;
  }
  if (mouseX >= 324 && mouseX <= 674 && mouseY >= 225 && mouseY <= 325){//check mouse is released in right position
      if(mousePressed == false && pressed == 1){//check is mouse clicked
         mode = 9;
         pressed = 0;
      }
  }
  else if(mouseX >= 324 && mouseX <= 674 && mouseY >= 425 && mouseY <= 525){
    if(mousePressed == false && pressed == 2){//check is mouse clicked
          mode = 16;
          pressed = 0;
    }
  }
  else if(mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){
    if(mousePressed ==false && pressed == 3){//check is mouse clicked
      mode = 3;
      pressed = 0;
    }
  }
  
  
}

void levelMenu2(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Level 2 Menu", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textFont(subFont);
  fill(255);
  textSize(25);
  text("Continue with lesson: ",500,200);
  text("Skip to quiz: ",500,400);
  fill(#FF8C00);
  rect(324,225,350,100,20);
  rect(324,425,350,100,20);
  fill(0);
  textSize(50);
  text("Lesson",500,290);
  text("Quiz",492,490);
  image(apple,5,5,width/16,height/10);
  fill(255);
  textFont(sub2Font);
  textSize(20);
  text("Back",35,50);
  if(mousePressed && mouseX >= 324 && mouseX <= 674 && mouseY >= 225 && mouseY <= 325){//check mouse is pressed in correct position
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 324 && mouseX <= 674 && mouseY >= 425 && mouseY <= 525){
    pressed = 2;
  }
  else if(mousePressed && mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){
    pressed = 3;
  }
  if (mouseX >= 324 && mouseX <= 674 && mouseY >= 225 && mouseY <= 325){//check mouse is released in correct position
      if(mousePressed == false && pressed == 1){//check is mouse clicked
         mode = 11;
         pressed = 0;
      }
  }
  else if(mouseX >= 324 && mouseX <= 674 && mouseY >= 425 && mouseY <= 525){
    if(mousePressed == false && pressed == 2){//check is mouse clicked
          mode = 23;
          pressed = 0;
    }
  }
  else if(mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){
    if(mousePressed ==false && pressed == 3){//check is mouse clicked
      mode = 3;
      pressed = 0;
    }
  }
  
}

void levelMenu3(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Level 3 Menu", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textFont(subFont);
  fill(255);
  textSize(25);
  text("Continue with lesson: ",500,200);
  text("Skip to quiz: ",500,400);
  fill(#FF8C00);
  rect(324,225,350,100,20);
  rect(324,425,350,100,20);
  fill(0);
  textSize(50);
  text("Lesson",500,290);
  text("Quiz",492,490);
  image(apple,5,5,width/16,height/10);
  fill(255);
  textFont(sub2Font);
  textSize(20);
  text("Back",35,50);
  if(mousePressed && mouseX >= 324 && mouseX <= 674 && mouseY >= 225 && mouseY <= 325){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 324 && mouseX <= 674 && mouseY >= 425 && mouseY <= 525){
    pressed = 2;
  }
  else if(mousePressed && mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){
    pressed = 3;
  }
  if (mouseX >= 324 && mouseX <= 674 && mouseY >= 225 && mouseY <= 325){
      if(mousePressed == false && pressed == 1){//check is mouse clicked
         mode = 13;
         pressed = 0;
      }
  }
  else if(mouseX >= 324 && mouseX <= 674 && mouseY >= 425 && mouseY <= 525){
    if(mousePressed == false && pressed == 2){//check is mouse clicked
          mode = 14;
          pressed = 0;
    }
  }
  else if(mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){
    if(mousePressed ==false && pressed == 3){//check is mouse clicked
      mode = 3;
      pressed = 0;
    }
  }
}

void goodBye(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("GOODBYE!!", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textFont(subFont);
  textSize(35);
  fill(255);
  text("Thank You for using Math Tutor!! Have a nice day!",219,225,550,500);
  textSize(30);
  text("Click anywhere to exit",219,400,550,300);
  textSize(20);
  text("Program made by Ronald You",500,525);
  image(apple,5,5,width/16,height/10);//back apple image
  fill(255);
  textFont(sub2Font);
  textSize(20);
  text("Back",35,50);//back text
  if(mousePressed && mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//test for mouse press on the back button
    pressed = 1;
  }
  else if(mousePressed){//test for mouse press anywhere else on the sreen
    pressed = 2;
  }
  if(mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 2;
      pressed = 0;
    }
  }
  else if(mousePressed == false && pressed == 2){
     mode = 5;
     pressed = 0;
  }
  
}

void lesson1addition(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Lesson", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Addition: ",290,200);
  textSize(25);
  textAlign(LEFT);
  text("Addition is the process of finding the total, or sum, by combining two or more numbers.",208,230,600,500);//lesson
  text("If you have a combination of three apples and two apples together, they make a total of five apples. This observation is equivalent to the mathematical expression '3 + 2 = 5' using the plus symbol '+'. ",208,300,600,500);
  textFont(sub2Font);
  textAlign(CENTER);
  textSize(35);
  text("Click anywhere to continue",487,490);
  image(apple,5,5,width/16,height/10);
  fill(255);
  textFont(sub2Font);
  textSize(20);
  text("Back",35,50);
  if(mousePressed && mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//test for mouse press on the back button
    pressed = 1;
  }
  else if(mousePressed){//test for mouse press anywhere else on the sreen
    pressed = 2;
  }
  if(mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 6;
      pressed = 0;
    }
  }
  else if(mousePressed == false && pressed == 2){
     mode = 15;
     pressed = 0;
  }
}

void lesson1subtraction(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Lesson", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Subtraction: ",305,200);
  textSize(25);
  textAlign(LEFT);
  text("Subtraciton is the process of taking a number away from another to find the difference.",208,230,600,500);
  text("If you have 5 apples, and your friends take 2 away, you are left with 3 apples. This observation is equivalent to the mathematical expression '5 - 2 = 3' using the minus symbol '-'. ",208,300,600,500);
  textFont(sub2Font);
  textAlign(CENTER);
  textSize(35);
  text("Click to continue to quiz",487,490);
  image(apple,5,5,width/16,height/10);
  fill(255);
  textFont(sub2Font);
  textSize(20);
  text("Back",35,50);
  if(mousePressed && mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//test for mouse press on the back button
    pressed = 1;
  }
  else if(mousePressed){//test for mouse press anywhere else on the sreen
    pressed = 2;
  }
  if(mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 9;
      pressed = 0;
    }
  }
  else if(mousePressed == false && pressed == 2){
     mode = 16;
     pressed = 0;
  }
}
void lesson1mc1(){//first multiple choice question
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 1): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text(Lesson1Q1,207,240);//multiple choice question
  fill(255);
  text("a) " + (L1q11 + L1q12) ,300,300);//correct answer is a
  text("b) " + L1q11 + L1q12, 300,365);
  text("c) " + (abs(L1q11 - L1q23)),300,430);
  text("d) " + L1q12 + L1q11,300,495);
  if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){//if a choice is pressed move onto the next screen no matter if the answer is right or wrong
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 4;
  }
  if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 17;
      pressed = 0;
      score += 1;//if answer is right add 1 to their score
      random = 0;//sets random to 0 allowing numbers to be rerandomized
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    if(mousePressed ==false && pressed ==2){
      mode = 17;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    if(mousePressed == false && pressed ==3){
      mode = 17;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    if(mousePressed == false && pressed ==4){
      mode = 17;
      pressed = 0;
      random = 0;
    }
  }
 fill(0);
 text("Score = " + score,800,50);//displays the score
}

void lesson1mc2(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 2): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text(Lesson1Q2,207,240);
  text("a) " + (L1q21 + L1q23) ,300,300);//random answers
  text("b) " + (L1q21 + L1q22), 300,365);
  text("c) " + (L1q21 + L1q22 + L1q23),300,430);//correct answer is c
  text("d) " + (L1q22 + L1q23),300,495);
  if (mousePressed && mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 4;
  }
  if(mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 18;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    if(mousePressed ==false && pressed ==2){
      mode = 18;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    if(mousePressed == false && pressed ==3){
      mode = 18;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    if(mousePressed == false && pressed == 4){
      mode = 18;
      pressed = 0;
      random = 0;
    }
  }
  fill(0);
  text("Score = " + score,800,50);
}

void lesson1mc3(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 3): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text(Lesson1Q3,207,240);
  text("a) " + (L1q32 - L1q31) ,300,300);
  text("b) " + (L1q31 + L1q32), 300,365);
  text("c) " + (L1q31 + L1q22),300,430);
  text("d) " + (L1q31 - L1q32),300,495);//correct answer is d
  if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 4;
  }
  if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 19;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    if(mousePressed ==false && pressed ==2){
      mode = 19;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    if(mousePressed == false && pressed ==3){
      mode = 19;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    if(mousePressed == false && pressed ==4){
      mode = 19;
      pressed = 0;
      random = 0;
    }
  }
  fill(0);
  text("Score = " + score,800,50);
}

void lesson1mc4(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 4): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text(Lesson1Q4,207,240);
  text("a) " + (L1q42 + L1q41) ,300,300);
  text("b) " + (L1q41 - L1q43), 300,365);
  text("c) " + L1q41 + L1q42,300,430);
  text("d) " + (L1q41 - L1q42 - L1q43),300,495);//correct answer is d
  if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 4;
  }
  if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 20;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    if(mousePressed ==false && pressed ==2){
      mode = 20;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    if(mousePressed == false && pressed ==3){
      mode = 20;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    if(mousePressed == false && pressed ==4){
      mode = 20;
      pressed = 0;
      random = 0;
    }
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson1mc5(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 5): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text(Lesson1Q5,207,240);
  text("a) " + (L1q52 - L1q53) ,300,300);
  text("b) " + (L1q51 - L1q52 + L1q53), 300,365);//correct answer is b
  text("c) " + (L1q51 + L1q52 - L1q53),300,430);
  text("d) " + (L1q51 + L1q52),300,495);
  if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 4;
  }
  if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 21;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    if(mousePressed ==false && pressed ==2){
      mode = 21;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    if(mousePressed == false && pressed ==3){
      mode = 21;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    if(mousePressed == false && pressed == 4){
      mode = 21;
      pressed = 0;
      random = 0;
    }
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson1mc6(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 6): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel16),200,220,600,500);//displaying the question
  if (shortAnswerLevel16 == Lesson1Q6){//solves the answer for the questions depending on the randomly selected question from the array
    answer1 = L1q61 - L1q62;
  }
  else if(shortAnswerLevel16 == Lesson1Q7){
    answer1 = L1q71 + L1q72 - L1q73;
  }
  else if(shortAnswerLevel16 == Lesson1Q8){
    answer1 = L1q81 + L1q82 + L1q83;
  }
  else if(shortAnswerLevel16 ==Lesson1Q9){
    answer1 = L1q91 - L1q92 + L1q93;
  }
  else if(shortAnswerLevel16 == Lesson1Q10){
    answer1 = L1q101 - L1q102;
  }
  else if(shortAnswerLevel16 == Lesson1Q11){
    answer1 = L1q111 - L1q112 - L1q113;
  }
  else if(shortAnswerLevel16 == Lesson1Q12){
    answer1 = L1q124 + L1q122;
  }
  else if(shortAnswerLevel16 == Lesson1Q13){
    answer1 = L1q131 + L1q132;
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){//changes screen when enter is pressed
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){//deletes one number from the displayed typing when back spaced is pressed
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer1)){//checks the user's answer is the same as the computer calculated one
      score += 1;
    }
    mode = 28;
    pressed = 0;
    typing = "";//displays what the user is typing
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson1mc7(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 7): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel17),200,220,600,500);
  if (shortAnswerLevel17 == Lesson1Q6){
    answer1 = L1q61 - L1q62;
  }
  else if(shortAnswerLevel17 == Lesson1Q7){
    answer1 = L1q71 + L1q72 - L1q73;
  }
  else if(shortAnswerLevel17 == Lesson1Q8){
    answer1 = L1q81 + L1q82 + L1q83;
  }
  else if(shortAnswerLevel17 ==Lesson1Q9){
    answer1 = L1q91 - L1q92 + L1q93;
  }
  else if(shortAnswerLevel17 == Lesson1Q10){
    answer1 = L1q101 - L1q102;
  }
  else if(shortAnswerLevel17 == Lesson1Q11){
    answer1 = L1q111 - L1q112 - L1q113;
  }
  else if(shortAnswerLevel17 == Lesson1Q12){
    answer1 = L1q124 + L1q122;
  }
  else if(shortAnswerLevel17 == Lesson1Q13){
    answer1 = L1q131 + L1q132;
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer1)){
      score += 1;
    }
    mode = 29;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson1mc8(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 8): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel18),200,220,600,500);
  if (shortAnswerLevel18 == Lesson1Q6){
    answer1 = L1q61 - L1q62;
  }
  else if(shortAnswerLevel18 == Lesson1Q7){
    answer1 = L1q71 + L1q72 - L1q73;
  }
  else if(shortAnswerLevel18 == Lesson1Q8){
    answer1 = L1q81 + L1q82 + L1q83;
  }
  else if(shortAnswerLevel18 ==Lesson1Q9){
    answer1 = L1q91 - L1q92 + L1q93;
  }
  else if(shortAnswerLevel18 == Lesson1Q10){
    answer1 = L1q101 - L1q102;
  }
  else if(shortAnswerLevel18 == Lesson1Q11){
    answer1 = L1q111 - L1q112 - L1q113;
  }
  else if(shortAnswerLevel18 == Lesson1Q12){
    answer1 = L1q124 + L1q122;
  }
  else if(shortAnswerLevel18 == Lesson1Q13){
    answer1 = L1q131 + L1q132;
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer1)){
      score += 1;
    }
    mode = 30;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson1mc9(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 9): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel19),200,220,600,500);
  if (shortAnswerLevel19 == Lesson1Q6){
    answer1 = L1q61 - L1q62;
  }
  else if(shortAnswerLevel19 == Lesson1Q7){
    answer1 = L1q71 + L1q72 - L1q73;
  }
  else if(shortAnswerLevel19 == Lesson1Q8){
    answer1 = L1q81 + L1q82 + L1q83;
  }
  else if(shortAnswerLevel19 ==Lesson1Q9){
    answer1 = L1q91 - L1q92 + L1q93;
  }
  else if(shortAnswerLevel19 == Lesson1Q10){
    answer1 = L1q101 - L1q102;
  }
  else if(shortAnswerLevel19 == Lesson1Q11){
    answer1 = L1q111 - L1q112 - L1q113;
  }
  else if(shortAnswerLevel19 == Lesson1Q12){
    answer1 = L1q124 + L1q122;
  }
  else if(shortAnswerLevel19 == Lesson1Q13){
    answer1 = L1q131 + L1q132;
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,525);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer1)){
      score += 1;
    }
    mode = 31;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson1mc10(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 10): ",435,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel20),200,220,600,500);
  if (shortAnswerLevel20 == Lesson1Q6){
    answer1 = L1q61 - L1q62;
  }
  else if(shortAnswerLevel20 == Lesson1Q7){
    answer1 = L1q71 + L1q72 - L1q73;
  }
  else if(shortAnswerLevel20 == Lesson1Q8){
    answer1 = L1q81 + L1q82 + L1q83;
  }
  else if(shortAnswerLevel20 ==Lesson1Q9){
    answer1 = L1q91 - L1q92 + L1q93;
  }
  else if(shortAnswerLevel20 == Lesson1Q10){
    answer1 = L1q101 - L1q102;
  }
  else if(shortAnswerLevel20 == Lesson1Q11){
    answer1 = L1q111 - L1q112 - L1q113;
  }
  else if(shortAnswerLevel20 == Lesson1Q12){
    answer1 = L1q124 + L1q122;
  }
  else if(shortAnswerLevel20 == Lesson1Q13){
    answer1 = L1q131 + L1q132;
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer1)){
      score += 1;
    }
    mode = 32;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}
void score1(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Results!", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 1", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  textAlign(LEFT);
  text("Your Score: ",225,200);
  textSize(27);
  percent1 = (((float(score)/10)*100));//calculates percentage of correct ansers
  text("You got " + score + " out of 10 questions. That is " + percent1 + " percent!", 225,225,500,300);
  if (score > 8){//displays an according message based on how the user reformed
    text("You should move onto level 2!!", 225,325);
  }
  else if (score <= 7 && score >= 5){
    text("Nice job, but maybe you should practice one more time!!",225,325);
  }
  else if (score < 5){
    text("You should practice a few more times :)", 225,325);
  }
  fill(#FF8C00);
  rect(235,400,225,100,20);
  rect(530,400,225,100,20);
  fill(0);
  text("Play Again!", 267,457);
  text("Leave",600,457);
  if (mousePressed && mouseX >= 235 && mouseX <= 460 && mouseY >= 400 && mouseY <= 500){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 530 && mouseX <= 755 && mouseY >= 400 && mouseY <= 500){
    pressed = 2;
  }
  if (mouseX >= 235 && mouseX <= 460 && mouseY >= 400 && mouseY <= 500){
    if(mousePressed == false && pressed == 1){
      mode = 3;
      pressed = 0;
    }
  }
  else if(mouseX >= 530 && mouseX <= 755 && mouseY >= 400 && mouseY <= 500){
    if(mousePressed == false && pressed ==2){
      mode = 4;
      pressed = 0;
    }
  }
 
}

void lesson2multiplication(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Lesson", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiplication: ",325,200);
  textSize(25);
  textAlign(LEFT);
  text("Multiplication is the repeated addition of numbers. For example, 2 x 3 is 2 + 2 + 2",208,230,600,500);
  text("If you have three groups of five flowers, that is equivalent to 5 + 5 + 5 is equals to 3 x 5 = 15.",208,300,600,500);
  textFont(sub2Font);
  textAlign(CENTER);
  textSize(35);
  text("Click anywhere to continue",487,490);
  image(apple,5,5,width/16,height/10);
  fill(255);
  textFont(sub2Font);
  textSize(20);
  text("Back",35,50);
  if(mousePressed && mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//test for mouse press on the back button
    pressed = 1;
  }
  else if(mousePressed){//test for mouse press anywhere else on the sreen
    pressed = 2;
  }
  if(mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 7;
      pressed = 0;
    }
  }
  else if(mousePressed == false && pressed == 2){
     mode = 22;
     pressed = 0;
  }
}

void lesson2division(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Lesson", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Division: ",285,200);
  textSize(25);
  textAlign(LEFT);
  text("Division is splitting into equal parts or groups. It is the result of 'fair sharing'",208,230,600,500);
  text("If you have 6 apples and you want to share them equally with someone else, each of you get 3 apples. This can be written as 6 / 2 = 3 ",208,300,600,500);
  textFont(sub2Font);
  textAlign(CENTER);
  textSize(35);
  text("Click to continue to quiz",487,490);
  image(apple,5,5,width/16,height/10);
  fill(255);
  textFont(sub2Font);
  textSize(20);
  text("Back",35,50);
  if(mousePressed && mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//test for mouse press on the back button
    pressed = 1;
  }
  else if(mousePressed){//test for mouse press anywhere else on the sreen
    pressed = 2;
  }
  if(mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 11;
      pressed = 0;
    }
  }
  else if((mousePressed == false && pressed == 2)){
     mode = 23;
     pressed = 0;
  }
}
void lesson2mc1(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 1): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text(Lesson2Q1,207,240);
  text("a) " + (L2q11 + L2q11) ,300,300);
  text("b) " + (L2q11 + L2q12), 300,365);
  text("c) " + (L2q11*L2q12),300,430);//answer is c
  text("d) " + (L1q51 + L1q52),300,495);
  if (mousePressed && mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 4;
  }
  if(mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 24;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    if(mousePressed ==false && pressed ==2){
      mode = 24;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    if(mousePressed == false && pressed ==3){
      mode = 24;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    if(mousePressed == false && pressed == 4){
      mode = 24;
      pressed = 0;
      random = 0;
    }
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson2mc2(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 2): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text(Lesson2Q2,207,240);
  text("a) " + (L2q21 + L2q23) ,300,300);
  text("b) " + (L2q21 * L2q22 * L2q23), 300,365);//correct answer is b
  text("c) " + (L2q21 * L2q23),300,430);
  text("d) " + (L1q22 + L1q23),300,495);
  if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 4;
  }
  if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 25;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    if(mousePressed ==false && pressed ==2){
      mode = 25;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    if(mousePressed == false && pressed ==3){
      mode = 25;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    if(mousePressed == false && pressed == 4){
      mode = 25;
      pressed = 0;
      random = 0;
    }
  }
  fill(0);
  text("Score = " + score,800,50);
}

void lesson2mc3(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 3): ",450,200);
  textSize(30);
  textAlign(LEFT);
  textSize(30);
  text("Round to the nearest whole number ",207,237);
  text(Lesson2Q3,207,270);
  text("a) " + (L2q32 - L2q31) ,300,300);
  text("b) " + (L1q31 * L1q32), 300,365);
  text("c) " + (L1q31 + L1q22),300,430);
  text("d) " + (L2q31 / L2q32),300,495);//correct answer is d
  if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 4;
  }
  if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 26;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    if(mousePressed ==false && pressed ==2){
      mode = 26;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    if(mousePressed == false && pressed ==3){
      mode = 26;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    if(mousePressed == false && pressed ==4){
      mode = 26;
      pressed = 0;
      random = 0;
    }
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson2mc4(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 4): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text("Round to the nearest whole number ",207,237);
  text(Lesson2Q4,207,270);
  text("a) " + (L2q41 * L2q42 / L2q43) ,300,300);//correct answer is a
  text("b) " + (L2q41 * L1q43), 300,365);
  text("c) " + L2q41 / L2q42,300,430);
  text("d) " + (L2q41 * L2q42 * L2q43),300,495);
  if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 4;
  }
  if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 27;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    if(mousePressed ==false && pressed ==2){
      mode = 27;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    if(mousePressed == false && pressed ==3){
      mode = 27;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    if(mousePressed == false && pressed ==4){
      mode = 27;
      pressed = 0;
      random = 0;
    }
  }
 fill(0);
 text("Score = " + score,800,50);
}
void lesson2mc5(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 5): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text("Round to the nearest whole number ",207,237);
  text(Lesson2Q5,207,270);
  text("a) " + (L2q51 / L2q52 / L2q53) ,300,300);//correct answer is a
  text("b) " + (L2q51 + L1q53), 300,365);
  text("c) " + L2q41 / L2q52,300,430);
  text("d) " + (L2q51 * L2q42 * L2q53),300,495);
  if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 4;
  }
  if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 33;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    if(mousePressed ==false && pressed ==2){
      mode = 33;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    if(mousePressed == false && pressed ==3){
      mode = 33;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    if(mousePressed == false && pressed ==4){
      mode = 33;
      pressed = 0;
      random = 0;
    }
  }
 fill(0);
 text("Score = " + score,800,50);
}
void lesson2mc6(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 6): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel26),200,220,600,500);
  if (shortAnswerLevel26 == Lesson2Q6){
    answer2 = ((L2q61 * L2q62) - (L2q61*L2q63));
  }
  else if(shortAnswerLevel26 == Lesson2Q7){
    answer2 = (L2q71 * L2q72);
  }
  else if(shortAnswerLevel26 == Lesson2Q8){
    answer2 = round(L2q81/L2q82);
  }
  else if(shortAnswerLevel26 ==Lesson2Q9){
    answer2 = ((3*L2q91) + (2*L2q92));
  }
  else if(shortAnswerLevel26 == Lesson2Q10){
    answer2 = floor(L2q102/L2q101);
  }
  else if(shortAnswerLevel26 == Lesson2Q11){
    answer2 = round((L2q111-L2q112)/2);
  }
  else if(shortAnswerLevel26 == Lesson2Q12){
    answer2 = round(L2q121/3);
  }
  else if(shortAnswerLevel26 == Lesson2Q13){
    answer2 = round(L2q131/L2q132);
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer2)){
      score += 1;
    }
    mode = 34;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson2mc7(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 7): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel27),200,220,600,500);
 if (shortAnswerLevel27 == Lesson2Q6){
    answer2 = ((L2q61 * L2q62) - (L2q61*L2q63));
  }
  else if(shortAnswerLevel27 == Lesson2Q7){
    answer2 = (L2q71 * L2q72);
  }
  else if(shortAnswerLevel27 == Lesson2Q8){
    answer2 = round(L2q81/L2q82);
  }
  else if(shortAnswerLevel27 ==Lesson2Q9){
    answer2 = ((3*L2q91) + (2*L2q92));
  }
  else if(shortAnswerLevel27 == Lesson2Q10){
    answer2 = floor(L2q102/L2q101);
  }
  else if(shortAnswerLevel27 == Lesson2Q11){
    answer2 = round((L2q111-L2q112)/2);
  }
  else if(shortAnswerLevel27 == Lesson2Q12){
    answer2 = round(L2q121/3);
  }
  else if(shortAnswerLevel27 == Lesson2Q13){
    answer2 = round(L2q131/L2q132);
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer2)){
      score += 1;
    }
    mode = 35;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}

void lesson2mc8(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 8): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel28),200,220,600,500);
 if (shortAnswerLevel28 == Lesson2Q6){
    answer2 = ((L2q61 * L2q62) - (L2q61*L2q63));
  }
  else if(shortAnswerLevel28 == Lesson2Q7){
    answer2 = (L2q71 * L2q72);
  }
  else if(shortAnswerLevel28 == Lesson2Q8){
    answer2 = round(L2q81/L2q82);
  }
  else if(shortAnswerLevel28 ==Lesson2Q9){
    answer2 = ((3*L2q91) + (2*L2q92));
  }
  else if(shortAnswerLevel28 == Lesson2Q10){
    answer2 = floor(L2q102/L2q101);
  }
  else if(shortAnswerLevel28 == Lesson2Q11){
    answer2 = round((L2q111-L2q112)/2);
  }
  else if(shortAnswerLevel28 == Lesson2Q12){
    answer2 = round(L2q121/3);
  }
  else if(shortAnswerLevel28 == Lesson2Q13){
    answer2 = round(L2q131/L2q132);
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer2)){
      score += 1;
    }
    mode = 36;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson2mc9(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 9): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel29),200,220,600,500);
 if (shortAnswerLevel29 == Lesson2Q6){
    answer2 = ((L2q61 * L2q62) - (L2q61*L2q63));
  }
  else if(shortAnswerLevel29 == Lesson2Q7){
    answer2 = (L2q71 * L2q72);
  }
  else if(shortAnswerLevel29 == Lesson2Q8){
    answer2 = round(L2q81/L2q82);
  }
  else if(shortAnswerLevel29 ==Lesson2Q9){
    answer2 = ((3*L2q91) + (2*L2q92));
  }
  else if(shortAnswerLevel29 == Lesson2Q10){
    answer2 = floor(L2q102/L2q101);
  }
  else if(shortAnswerLevel29 == Lesson2Q11){
    answer2 = round((L2q111-L2q112)/2);
  }
  else if(shortAnswerLevel29 == Lesson2Q12){
    answer2 = round(L2q121/3);
  }
  else if(shortAnswerLevel29 == Lesson2Q13){
    answer2 = round(L2q131/L2q132);
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer2)){
      score += 1;
    }
    mode = 37;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson2mc10(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 10): ",435,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel30),200,220,600,500);
 if (shortAnswerLevel30 == Lesson2Q6){
    answer2 = ((L2q61 * L2q62) - (L2q61*L2q63));
  }
  else if(shortAnswerLevel30 == Lesson2Q7){
    answer2 = (L2q71 * L2q72);
  }
  else if(shortAnswerLevel30 == Lesson2Q8){
    answer2 = round(L2q81/L2q82);
  }
  else if(shortAnswerLevel30 ==Lesson2Q9){
    answer2 = ((3*L2q91) + (2*L2q92));
  }
  else if(shortAnswerLevel30 == Lesson2Q10){
    answer2 = floor(L2q102/L2q101);
  }
  else if(shortAnswerLevel30 == Lesson2Q11){
    answer2 = round((L2q111-L2q112)/2);
  }
  else if(shortAnswerLevel30 == Lesson2Q12){
    answer2 = round(L2q121/3);
  }
  else if(shortAnswerLevel30 == Lesson2Q13){
    answer2 = round(L2q131/L2q132);
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer2)){
      score += 1;
    }
    mode = 38;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}
void score2(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Results!", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 2", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  textAlign(LEFT);
  text("Your Score: ",225,200);
  textSize(27);
  percent1 = (((float(score)/10)*100));
  text("You got " + score + " out of 10 questions. That is " + percent1 + " percent!", 225,225,500,300);
  if (score > 8){
    text("You should move onto level 3!!", 225,325);
  }
  else if (score <= 7 && score >= 5){
    text("Nice job, but maybe you should practice one more time!!",225,325);
  }
  else if (score < 5){
    text("You should practice a few more times :)", 225,325);
  }
  fill(#FF8C00);
  rect(235,400,225,100,20);
  rect(530,400,225,100,20);
  fill(0);
  text("Play Again!", 267,457);
  text("Leave",600,457);
  if (mousePressed && mouseX >= 235 && mouseX <= 460 && mouseY >= 400 && mouseY <= 500){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 530 && mouseX <= 755 && mouseY >= 400 && mouseY <= 500){
    pressed = 2;
  }
  if (mouseX >= 235 && mouseX <= 460 && mouseY >= 400 && mouseY <= 500){
    if(mousePressed == false && pressed == 1){
      mode = 3;
      pressed = 0;
    }
  }
  else if(mouseX >= 530 && mouseX <= 755 && mouseY >= 400 && mouseY <= 500){
    if(mousePressed == false && pressed ==2){
      mode = 4;
      pressed = 0;
    }
  }
}
void lesson3bedmas(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Lesson", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("BEDMAS: ",305,200);
  textSize(25);
  textAlign(LEFT);
  text("Order of operations is the order in which certain mathematical operations such as addition and multiplication need to be performed in",208,220,600,500);
  text("The correct order is performing anything inside brackets first, then exponents, then divison and multiplication, then addition and subtraction.",208,310,600,500);
  textFont(sub2Font);
  textAlign(CENTER);
  textSize(35);
  text("Click anywhere to continue",487,490);
  image(apple,5,5,width/16,height/10);
  fill(255);
  textFont(sub2Font);
  textSize(20);
  text("Back",35,50);
  if(mousePressed && mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//test for mouse press on the back button
    pressed = 1;
  }
  else if(mousePressed){//test for mouse press anywhere else on the sreen
    pressed = 2;
  }
  if(mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 7;
      pressed = 0;
    }
  }
  else if(mousePressed == false && pressed == 2){
     mode = 39;
     pressed = 0;
  }
}

void lesson3average(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Lesson", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Average: ",283,200);
  textSize(25);
  textAlign(LEFT);
  text("Average is a number expressing the central or typical value in a set of data it is calculated by dividing the sum of the values in the set by the number of numbers",208,220,600,500);
  text("If you had 2 and 10 in your set of data, the average would be 6, because 2 + 10 divided 2 is 6.",208,337,600,500);
  textFont(sub2Font);
  textAlign(CENTER);
  textSize(35);
  text("Click anywhere to continue to quiz",487,490);
  image(apple,5,5,width/16,height/10);
  fill(255);
  textFont(sub2Font);
  textSize(20);
  text("Back",35,50);
  if(mousePressed && mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//test for mouse press on the back button
    pressed = 1;
  }
  else if(mousePressed){//test for mouse press anywhere else on the sreen
    pressed = 2;
  }
  if(mouseX >= 5 && mouseX <= 50 && mouseY >=5 && mouseY <= 50){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 7;
      pressed = 0;
    }
  }
  else if(mousePressed == false && pressed == 2){
     mode = 14;
     pressed = 0;
  }
}

void lesson3mc1(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 1): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text(Lesson3Q1,207,240);
  text("a) " + (L3q11 + L3q11) ,300,300);
  text("b) " + ((L3q11 + L3q12) * L3q13), 300,365);//correct answer is b
  text("c) " + (L3q12*L3q13+L3q11),300,430);
  text("d) " + (L1q51 + L1q52),300,495);
  if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 4;
  }
  if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 41;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    if(mousePressed ==false && pressed ==2){
      mode = 41;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    if(mousePressed == false && pressed ==3){
      mode = 41;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    if(mousePressed == false && pressed == 4){
      mode = 41;
      pressed = 0;
      random = 0;
    }
  }
  fill(0);
  text("Score = " + score,800,50);
}

void lesson3mc2(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 2): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text(Lesson3Q2,207,240);
  fill(255);
  text("a) " + (L3q21 - L3q22 * L3q23) ,300,300);//correct answer is a
  text("b) " + ((L3q21 - L3q22) * L3q23), 300,365);
  text("c) " + (L3q21 - L3q22),300,430);
  text("d) " + L1q12 + L1q11,300,495);
  if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 4;
  }
  if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 42;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    if(mousePressed ==false && pressed ==2){
      mode = 42;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    if(mousePressed == false && pressed ==3){
      mode = 42;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    if(mousePressed == false && pressed ==4){
      mode = 42;
      pressed = 0;
      random = 0;
    }
  }
 fill(0);
 text("Score = " + score,800,50);
}

void lesson3mc3(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 3): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text("Round to the nearest whole number ",207,237);
  text(Lesson3Q3,207,270);
  text("a) " + (L1q32 - L1q31) ,300,300);//random answers
  text("b) " + (L3q31*(L3q32 + L3q33) + L3q34 / L3q35 + 2), 300,365);//random answers
  text("c) " + (L3q31*L3q32 - L3q33 + L3q34 / ( L3q35 + 2)),300,430);//random answers
  text("d) " + (L3q31*(L3q32 - L3q33) + L3q34 / ( L3q35 + 2)),300,495);//correct answer is d
  if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 4;
  }
  if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 43;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    if(mousePressed ==false && pressed ==2){
      mode = 43;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    if(mousePressed == false && pressed ==3){
      mode = 43;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    if(mousePressed == false && pressed ==4){
      mode = 43;
      pressed = 0;
      random = 0;
    }
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson3mc4(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 4): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text("Round to the nearest whole number ",207,237);
  text(Lesson3Q4,207,270);
  text("a) " + (L1q21 + L1q23) ,300,300);// random answers
  text("b) " + (L1q21 + L1q22 + L3q41), 300,365);// random answers
  text("c) " + (L3q41 - L3q42 + L3q43  + L3q44 *  (L3q45 / L3q46) + 1),300,430);//correct answer is c
  text("d) " + (L3q41 - L3q42 + L3q43  + L3q44 * ( L3q45 / L3q46)),300,495); //random answers
  if (mousePressed && mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 4;
  }
  if(mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 44;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    if(mousePressed ==false && pressed ==2){
      mode = 44;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    if(mousePressed == false && pressed ==3){
      mode = 44;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    if(mousePressed == false && pressed == 4){
      mode = 44;
      pressed = 0;
      random = 0;
    }
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson3mc5(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Multiple Choice (Question 5): ",450,200);
  textSize(30);
  textAlign(LEFT);
  text(Lesson3Q5,207,240);
  text("a) " + (L1q21 + L1q23) ,300,300);// random answers
  text("b) " + (( L3q51 - L3q52 ) * L3q53  + L3q54 + L3q55 - L3q56 + 1), 300,365);// random answers
  text("c) " + (( L3q51 - L3q52 ) * L3q53  + L3q54 + L3q55 - L3q56),300,430);//correct answer is c
  text("d) " + (( L3q51 - L3q52 ) * L3q53  + L3q54 + L3q55 - L3q56-2),300,495); //random answers
  if (mousePressed && mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    pressed = 2;
  }
  else if (mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    pressed = 3;
  }
  else if(mousePressed && mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    pressed = 4;
  }
  if(mouseX >= 300 && mouseX <= 380 && mouseY >= 395 && mouseY <= 445){//coordinates mouse need to inbetween
    if(mousePressed ==false && pressed == 1){//check is mouse clicked
      mode = 45;
      pressed = 0;
      score += 1;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 330 && mouseY <= 380){
    if(mousePressed ==false && pressed ==2){
      mode = 45;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 265 && mouseY <= 320){
    if(mousePressed == false && pressed ==3){
      mode = 45;
      pressed = 0;
      random = 0;
    }
  }
  else if(mouseX >= 290 && mouseX <= 380 && mouseY >= 460 && mouseY <= 510){
    if(mousePressed == false && pressed == 4){
      mode = 45;
      pressed = 0;
      random = 0;
    }
  }
  fill(0);
  text("Score = " + score,800,50);
}

void lesson3mc6(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 6): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel36),200,220,600,500);
  if (shortAnswerLevel36 == Lesson3Q6){
    answer3 = ((4 * L3q61) + ( 5 * L3q62))/9;
  }
  else if(shortAnswerLevel36 == Lesson3Q7){
    answer3 = ((5 * L3q72) - (3 * L3q71))/2;
  }
  else if(shortAnswerLevel36 == Lesson3Q8){
    answer3 = ((3 * L3q81) + L3q82)/4;
  }
  else if(shortAnswerLevel36 ==Lesson3Q9){
    answer3 = ((L3q91*L3q92) - L3q93 - L3q94)/(L3q91 - 2);
  }
  else if(shortAnswerLevel36 == Lesson3Q10){
    answer3 = (L3q101 + 1)/2 ;
  }
  else if(shortAnswerLevel36 == Lesson3Q11){
    answer3 = (L3q111 - 1)/2;
  }
  else if(shortAnswerLevel36 == Lesson3Q12){
    answer3 = (L3q122 * L3q123);
  }
  else if(shortAnswerLevel36 == Lesson3Q13){
    answer3 = (8 * L3q131) + L3q132;
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer3)){
      score += 1;
    }
    mode = 46;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}

void lesson3mc7(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 7): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel37),200,220,600,500);
  if (shortAnswerLevel37 == Lesson3Q6){
    answer3 = ((4 * L3q61) + ( 5 * L3q62))/9;
  }
  else if(shortAnswerLevel37 == Lesson3Q7){
    answer3 = ((5 * L3q72) - (3 * L3q71))/2;
  }
  else if(shortAnswerLevel37 == Lesson3Q8){
    answer3 = ((3 * L3q81) + L3q82)/4;
  }
  else if(shortAnswerLevel37 ==Lesson3Q9){
    answer3 = ((L3q91*L3q92) - L3q93 - L3q94)/(L3q91 - 2);
  }
  else if(shortAnswerLevel37 == Lesson3Q10){
    answer3 = (L3q101 + 1)/2 ;
  }
  else if(shortAnswerLevel37 == Lesson3Q11){
    answer3 = (L3q111 - 1)/2;
  }
  else if(shortAnswerLevel37 == Lesson3Q12){
    answer3 = (L3q122 * L3q123);
  }
  else if(shortAnswerLevel37 == Lesson3Q13){
    answer3 = (8 * L3q131) + L3q132;
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer3)){
      score += 1;
    }
    mode = 47;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}

void lesson3mc8(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 8): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel38),200,220,600,500);
  if (shortAnswerLevel38 == Lesson3Q6){
    answer3 = ((4 * L3q61) + ( 5 * L3q62))/9;
  }
  else if(shortAnswerLevel38 == Lesson3Q7){
    answer3 = ((5 * L3q72) - (3 * L3q71))/2;
  }
  else if(shortAnswerLevel38 == Lesson3Q8){
    answer3 = ((3 * L3q81) + L3q82)/4;
  }
  else if(shortAnswerLevel38 ==Lesson3Q9){
    answer3 = ((L3q91*L3q92) - L3q93 - L3q94)/(L3q91 - 2);
  }
  else if(shortAnswerLevel38 == Lesson3Q10){
    answer3 = (L3q101 + 1)/2 ;
  }
  else if(shortAnswerLevel38 == Lesson3Q11){
    answer3 = (L3q111 - 1)/2;
  }
  else if(shortAnswerLevel38 == Lesson3Q12){
    answer3 = (L3q122 * L3q123);
  }
  else if(shortAnswerLevel38 == Lesson3Q13){
    answer3 = (8 * L3q131) + L3q132;
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer3)){
      score += 1;
    }
    mode = 48;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}
void lesson3mc9(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 9): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel39),200,220,600,500);
  if (shortAnswerLevel39 == Lesson3Q6){
    answer3 = ((4 * L3q61) + ( 5 * L3q62))/9;
  }
  else if(shortAnswerLevel39 == Lesson3Q7){
    answer3 = ((5 * L3q72) - (3 * L3q71))/2;
  }
  else if(shortAnswerLevel39 == Lesson3Q8){
    answer3 = ((3 * L3q81) + L3q82)/4;
  }
  else if(shortAnswerLevel39 ==Lesson3Q9){
    answer3 = ((L3q91*L3q92) - L3q93 - L3q94)/(L3q91 - 2);
  }
  else if(shortAnswerLevel39 == Lesson3Q10){
    answer3 = (L3q101 + 1)/2 ;
  }
  else if(shortAnswerLevel39 == Lesson3Q11){
    answer3 = (L3q111 - 1)/2;
  }
  else if(shortAnswerLevel39 == Lesson3Q12){
    answer3 = (L3q122 * L3q123);
  }
  else if(shortAnswerLevel39 == Lesson3Q13){
    answer3 = (8 * L3q131) + L3q132;
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer3)){
      score += 1;
    }
    mode = 49;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}

void lesson3mc10(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Quiz", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  text("Short Answer (Question 10): ",425,200);
  textSize(30);
  textAlign(LEFT);
  text((shortAnswerLevel40),200,220,600,500);
  if (shortAnswerLevel40 == Lesson3Q6){//calculates answers
    answer3 = ((4 * L3q61) + ( 5 * L3q62))/9;
  }
  else if(shortAnswerLevel40 == Lesson3Q7){
    answer3 = ((5 * L3q72) - (3 * L3q71))/2;
  }
  else if(shortAnswerLevel40 == Lesson3Q8){
    answer3 = ((3 * L3q81) + L3q82)/4;
  }
  else if(shortAnswerLevel40 ==Lesson3Q9){
    answer3 = ((L3q91*L3q92) - L3q93 - L3q94)/(L3q91 - 2);
  }
  else if(shortAnswerLevel40 == Lesson3Q10){
    answer3 = (L3q101 + 1)/2 ;
  }
  else if(shortAnswerLevel40 == Lesson3Q11){
    answer3 = (L3q111 - 1)/2;
  }
  else if(shortAnswerLevel40 == Lesson3Q12){
    answer3 = (L3q122 * L3q123);
  }
  else if(shortAnswerLevel40 == Lesson3Q13){
    answer3 = (8 * L3q131) + L3q132;
  }
  userInput();
  textSize(30);
  text("Answer: ",325,475);
  text("Press Enter to submit",325,520);
  if (keyPressed && key == ENTER){
    pressed = 1;
  }
  else if(keyPressed && key == BACKSPACE){
    pressed = 2;
  }
  if(keyPressed == false && pressed == 1 ){//check is mouse clicked
    if (typing.equals(""+answer3)){
      score += 1;
    }
    mode = 50;
    pressed = 0;
    typing = "";
    random = 0;
    } 
  else if(keyPressed == false && pressed ==2){
     typing = typing.substring(0,(typing.length()-1));
     pressed = 0;
  }
  fill(0);
  text("Score = " + score,800,50);
}

void score3(){
  background(#FF8C00);
  fill(0);
  textFont(titleFont);
  textAlign(CENTER);
  textSize(60);
  text("Results!", 500, 75);
  image(blackboard,73,100, width/1.2, height/1.2);
  textSize(20);
  text("Level 3", 950,675);
  fill(255);
  textFont(subFont);
  textSize(35);
  textAlign(LEFT);
  text("Your Score: ",225,200);
  textSize(27);
  percent1 = (((float(score)/10)*100));
  text("You got " + score + " out of 10 questions. That is " + percent1 + " percent!", 225,225,500,300);
  if (score <= 7 && score >= 5){
    text("Nice job, but maybe you should practice one more time!!",225,325);
  }
  else if (score < 5){
    text("You should practice a few more times :)", 225,325);
  }
  fill(#FF8C00);
  rect(235,400,225,100,20);
  rect(530,400,225,100,20);
  fill(0);
  text("Play Again!", 267,457);
  text("Leave",600,457);
  if (mousePressed && mouseX >= 235 && mouseX <= 460 && mouseY >= 400 && mouseY <= 500){
    pressed = 1;
  }
  else if(mousePressed && mouseX >= 530 && mouseX <= 755 && mouseY >= 400 && mouseY <= 500){
    pressed = 2;
  }
  if (mouseX >= 235 && mouseX <= 460 && mouseY >= 400 && mouseY <= 500){
    if(mousePressed == false && pressed == 1){
      mode = 3;//back to level menu
      pressed = 0;
    }
  }
  else if(mouseX >= 530 && mouseX <= 755 && mouseY >= 400 && mouseY <= 500){
    if(mousePressed == false && pressed ==2){
      mode = 4;//goodbye screen
      pressed = 0;
    }
  }
}
