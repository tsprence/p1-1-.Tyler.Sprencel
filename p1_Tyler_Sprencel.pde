import processing.sound.*;
SoundFile ding;

//Highlight and general button variables
int circleX, circleY, circleX1, circleY1, circleX2, 
circleY2, F4X, F4Y, F5X, F5Y, F6X, F6Y, openX, openY, 
closeX, closeY, handicapX, handicapY, alarmX, alarmY, 
alarmW, alarmH, callX, callY, callW, callH;
boolean circleOver, circleOver1, circleOver2, circleOverF4,
circleOverF5, circleOverF6, overOpenDoors, overCloseDoors, 
overHandicap, overAlarm, overCall = false;
boolean pressedF1, pressedF2, pressedF3, pressedF4, pressedF5, pressedF6, 
pressedOpen, pressedClose, pressedHandicap, pressedAlarm, pressedCall = false;
int circleSize = 93;
//Color variables
color circleHighlight;
color circleColor, circleColor1, circleColor2, circleColor4, circleColor5,
circleColor6, openDoorsColor, closeDoorsColor, handicapColor, 
alarmColor, callColor;
//Font variable
PFont f;
    
void setup() {
    size(800,800);
    frameRate(60);
    //Font chosen
    f = createFont("Bahnschrift", 64, true);
    //Sound assigned
    ding = new SoundFile(this, "elevatorDing.wav");
    //Highlights button as light grey
    circleHighlight = color(#EAE8E8);
    //Original circle color is white
    circleColor = color(255);
    circleColor1 = color(255);
    circleColor2 = color(255);
    circleColor4 = color(255);
    circleColor5 = color(255);
    circleColor6 = color(255);
    openDoorsColor = color(255);
    closeDoorsColor = color(255);
    handicapColor = color(255);
    alarmColor = color(195);
    callColor = color(195);
    //Button positions assigned
    circleX = 400;
    circleY = 390;
    circleX1 = 200;
    circleY1 = 390;
    circleX2 = 600;
    circleY2 = 390;
    F4X = 600;
    F4Y = 230;
    F5X = 400;
    F5Y = 230;
    F6X = 200;
    F6Y = 230;
    openX = 200;
    openY = 550;
    handicapX = 400;
    handicapY = 550;
    closeX = 600;
    closeY = 550;
    alarmX = 130;
    alarmY = 60;
    alarmW = 250;
    alarmH = 80;
    callX = 420;
    callY = 60;
    callW = 250;
    callH = 80;
}

void draw() {
    update(mouseX, mouseY);
    //Greyish background preferred
    fill(150);
    //Textbox
    rect(100, 50, 600, 100, 100);
    fill(255);
    
    //Buttons will be shaped as perfect circles
    if (circleOver && pressedF2 != true) {
    fill(circleHighlight);
    } else {
      fill(circleColor);
    }
    
    stroke(0);
    ellipse(circleX, circleY, circleSize, circleSize);
    
    if (circleOver1 && pressedF3 != true) {
    fill(circleHighlight);
    } else {
      fill(circleColor1);
    }
    ellipse(circleX1, circleY1, circleSize, circleSize);
    
    if (circleOver2 && pressedF1 != true) {
    fill(circleHighlight);
    } else {
      fill(circleColor2);
    }
    ellipse(circleX2, circleY2, circleSize, circleSize);
    
    if (overOpenDoors && pressedOpen != true) {
    fill(circleHighlight);
    } else {
      fill(openDoorsColor);
    }
    ellipse(openX, openY, circleSize, circleSize);
    
    if (overCloseDoors && pressedClose != true) {
    fill(circleHighlight);
    } else {
      fill(closeDoorsColor);
    }
    ellipse(closeX, closeY, circleSize, circleSize);
    
    if (overHandicap && pressedHandicap != true) {
    fill(circleHighlight);
    } else {
      fill(handicapColor);
    }
    fill(#F6FF00);
    ellipse(400, 550, 105, 105);
    fill(255);
    ellipse(handicapX, handicapY, circleSize, circleSize);
    
    if (circleOverF4 && pressedF4 != true) {
    fill(circleHighlight);
    } else {
      fill(circleColor4);
    }
    ellipse(F4X, F4Y, circleSize, circleSize);
    
    if (circleOverF5 && pressedF5 != true) {
    fill(circleHighlight);
    } else {
      fill(circleColor5);
    }
    ellipse(F5X, F5Y, circleSize, circleSize);
    
    if (circleOverF6 && pressedF6 != true) {
    fill(circleHighlight);
    } else {
      fill(circleColor6);
    }
    ellipse(F6X, F6Y, circleSize, circleSize);
    
    //Text drawn
    if(pressedF1) {
       text("Destination: 1st Floor", 280, 110);
    } else if(pressedF2) {
       text("Destination: 2nd Floor", 280, 110);
    } else if(pressedF3) {
       text("Destination: 3nd Floor", 280, 110);
    } else if(pressedF4) {
       text("Destination: 4th Floor", 280, 110);
    } else if(pressedF5) {
       text("Destination: 5th Floor", 280, 110);
    } else if(pressedF6) {
       fill(255);
       text("Destination: 6th Floor", 280, 110);
    } else if(pressedOpen) {
       text("Holding Doors Open", 280, 110);
    } else if(pressedClose) {
       text("Closing Doors Now", 280, 110);
    } else if(pressedHandicap) {
       fill(195);
       if (overAlarm && pressedAlarm != true) {
          fill(circleHighlight);
       } else {
          fill(alarmColor);
       }
       rect(alarmX, alarmY, alarmW, alarmH, 100);
       if (overCall && pressedCall != true) {
          fill(circleHighlight);
       } else {
          fill(callColor);
       }
       rect(callX, callY, callW, callH, 100);
       
       strokeWeight(4);
       //Line for open doors button
       line(200, 530, 200, 570);
       //Triangles for open door button
       triangle(195, 530, 195, 570, 159, 550);
       triangle(205, 530, 205, 570, 240, 550);
       //Line for close doors button
       line(600, 530, 600, 570);
       triangle(641, 550, 605, 570, 605, 530);
       triangle(559, 550, 595, 570, 595, 530);
       //Call button
       fill(0);
       //Alarm symbol color
       fill(#F21B1B);
       //No borders on button
       noStroke();
       //Alarm symbol
       arc(255, 108, 50, 70, PI, TWO_PI);
       arc(255, 123, 70, 40, PI, TWO_PI);
       ellipse(255, 121, 20, 20);
       //text("Call for Help", 480, 110);
       arc(550, 100, 40, 70, HALF_PI, 3*HALF_PI);
       rect(545, 65.5, 15, 20);
       rect(545, 114.5, 15, 20);
    } else if(pressedAlarm) {
         text("Alarm Activated", 310, 110);
    } else if(pressedCall) {
         fill(255);
         text("Call Initiated Please Wait", 280, 110);
    }
    
    //Font of text
    textFont(f, 16);
    textSize(64);
    //Text color
    fill(0);
    //Floor numbers
    text("6", 183, 252);
    text("5", 382, 252);
    text("4", 580, 252);
    text("3", 183, 412);
    text("2", 384, 412);
    text("1", 590, 413);
    
    fill(255);
    strokeWeight(4);
    //Line for open doors button
    line(200, 530, 200, 570);
    //Triangles for open door button
    triangle(195, 530, 195, 570, 159, 550);
    triangle(205, 530, 205, 570, 240, 550);
    //Line for close doors button
    line(600, 530, 600, 570);
    triangle(641, 550, 605, 570, 605, 530);
    triangle(559, 550, 595, 570, 595, 530);
    textSize(24);
    fill(0);
    text("HELP", 370, 560);
}

void mousePressed() {
  if (circleOver) {
    background(200);
    circleColor = color(#EFFF79);
    circleColor1 = color(255);
    circleColor2 = color(255);
    circleColor4 = color(255);
    circleColor5 = color(255);
    circleColor6 = color(255);
    openDoorsColor = color(255);
    closeDoorsColor = color(255);
    handicapColor = color(255);
    pressedF1 = false;
    pressedF2 = true;
    pressedF3 = false;
    pressedF4 = false;
    pressedF5 = false;
    pressedF6 = false;
    pressedOpen = false;
    pressedClose = false; 
    pressedHandicap = false;
    pressedAlarm = false;
    pressedCall = false;
  }
  else if(circleOver1) {
    background(200);
    circleColor1 = color(#EFFF79);
    circleColor = color(255);
    circleColor2 = color(255);
    circleColor4 = color(255);
    circleColor5 = color(255);
    circleColor6 = color(255);
    openDoorsColor = color(255);
    closeDoorsColor = color(255);
    handicapColor = color(255);
    pressedF1 = false;
    pressedF2 = false;
    pressedF3 = true;
    pressedF4 = false;
    pressedF5 = false;
    pressedF6 = false;
    pressedOpen = false;
    pressedClose = false;
    pressedHandicap = false;
    pressedAlarm = false;
    pressedCall = false;
  }
  else if(circleOver2) {
    background(200);
    circleColor2 = color(#EFFF79);
    circleColor1 = color(255);
    circleColor = color(255);
    circleColor4 = color(255);
    circleColor5 = color(255);
    circleColor6 = color(255);
    openDoorsColor = color(255);
    closeDoorsColor = color(255);
    handicapColor = color(255);
    pressedF1 = true;
    pressedF2 = false;
    pressedF3 = false;
    pressedF4 = false;
    pressedF5 = false;
    pressedF6 = false;
    pressedOpen = false;
    pressedClose = false;
    pressedHandicap = false;
    pressedAlarm = false;
    pressedCall = false;
  }
  else if(circleOverF4) {
    background(200);
    circleColor2 = color(255);
    circleColor1 = color(255);
    circleColor = color(255);
    circleColor4 = color(#EFFF79);
    circleColor5 = color(255);
    circleColor6 = color(255);
    openDoorsColor = color(255);
    closeDoorsColor = color(255);
    handicapColor = color(255);
    pressedF1 = false;
    pressedF2 = false;
    pressedF3 = false;
    pressedF4 = true;
    pressedF5 = false;
    pressedF6 = false;
    pressedOpen = false;
    pressedClose = false;
    pressedHandicap = false;
    pressedAlarm = false;
    pressedCall = false;
  }
  else if(circleOverF5) {
    background(200);
    circleColor2 = color(255);
    circleColor1 = color(255);
    circleColor = color(255);
    circleColor4 = color(255);
    circleColor5 = color(#EFFF79);
    circleColor6 = color(255);
    openDoorsColor = color(255);
    closeDoorsColor = color(255);
    handicapColor = color(255);
    pressedF1 = false;
    pressedF2 = false;
    pressedF3 = false;
    pressedF4 = false;
    pressedF5 = true;
    pressedF6 = false;
    pressedOpen = false;
    pressedClose = false;
    pressedHandicap = false;
    pressedAlarm = false;
    pressedCall = false;
  }
  else if(circleOverF6) {
    background(200);
    circleColor2 = color(255);
    circleColor1 = color(255);
    circleColor = color(255);
    circleColor4 = color(255);
    circleColor5 = color(255);
    circleColor6 = color(#EFFF79);
    openDoorsColor = color(255);
    closeDoorsColor = color(255);
    handicapColor = color(255);
    pressedF1 = false;
    pressedF2 = false;
    pressedF3 = false;
    pressedF4 = false;
    pressedF5 = false;
    pressedF6 = true;
    pressedOpen = false;
    pressedClose = false;
    pressedHandicap = false;
    pressedAlarm = false;
    pressedCall = false;
  }
  else if(overOpenDoors) {
    background(200);
    circleColor2 = color(255);
    circleColor1 = color(255);
    circleColor = color(255);
    circleColor4 = color(255);
    circleColor5 = color(255);
    circleColor6 = color(255);
    openDoorsColor = color(#EFFF79);
    closeDoorsColor = color(255);
    handicapColor = color(255);
    pressedF1 = false;
    pressedF2 = false;
    pressedF3 = false;
    pressedF4 = false;
    pressedF5 = false;
    pressedF6 = false;
    pressedOpen = true;
    pressedClose = false;
    pressedHandicap = false;
    pressedAlarm = false;
    pressedCall = false;
  }    
  else if(overCloseDoors) {
    background(200);
    circleColor2 = color(255);
    circleColor1 = color(255);
    circleColor = color(255);
    circleColor4 = color(255);
    circleColor5 = color(255);
    circleColor6 = color(255);
    openDoorsColor = color(255);
    closeDoorsColor = color(#EFFF79);
    handicapColor = color(255);
    pressedF1 = false;
    pressedF2 =  false;
    pressedF3 = false;
    pressedF4 = false;
    pressedF5 = false;
    pressedF6 = false;
    pressedOpen = false;
    pressedClose = true;
    pressedHandicap = false;
    pressedAlarm = false;
    pressedCall = false;
  }
  else if(overHandicap) {
    background(200);
    circleColor2 = color(255);
    circleColor1 = color(255);
    circleColor = color(255);
    circleColor4 = color(255);
    circleColor5 = color(255);
    circleColor6 = color(255);
    openDoorsColor = color(255);
    closeDoorsColor = color(255);
    handicapColor = color(#EFFF79);
    pressedF1 = false;
    pressedF2 = false;
    pressedF3 = false;
    pressedF4 = false;
    pressedF5 = false;
    pressedF6 = false;
    pressedOpen = false;
    pressedClose = false;
    pressedHandicap = true;
    pressedAlarm = false;
    pressedCall = false;
  }
  else if(overAlarm) {
    background(200);
    circleColor2 = color(255);
    circleColor1 = color(255);
    circleColor = color(255);
    circleColor4 = color(255);
    circleColor5 = color(255);
    circleColor6 = color(255);
    openDoorsColor = color(255);
    closeDoorsColor = color(255);
    handicapColor = color(255);
    alarmColor = color(255);
    callColor = color(255);
    pressedF1 = false;
    pressedF2 = false;
    pressedF3 = false;
    pressedF4 = false;
    pressedF5 = false;
    pressedF6 = false;
    pressedOpen = false;
    pressedClose = false;
    pressedHandicap = false;
    pressedAlarm = true;
    pressedCall = false;
  }
  else if(overCall) {
    background(200);
    circleColor2 = color(255);
    circleColor1 = color(255);
    circleColor = color(255);
    circleColor4 = color(255);
    circleColor5 = color(255);
    circleColor6 = color(255);
    openDoorsColor = color(255);
    closeDoorsColor = color(255);
    handicapColor = color(255);
    alarmColor = color(255);
    callColor = color(255);
    pressedF1 = false;
    pressedF2 = false;
    pressedF3 = false;
    pressedF4 = false;
    pressedF5 = false;
    pressedF6 = false;
    pressedOpen = false;
    pressedClose = false;
    pressedHandicap = false;
    pressedAlarm = false;
    pressedCall = true;
  }
}

//Changes to true if mouse is over the circle
void update(int x, int y) {
  if (overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    circleOver1 = false;
    circleOver2 = false;
    circleOverF4 = false;
    circleOverF5 = false;
    circleOverF6 = false;
    overOpenDoors = false;
    overCloseDoors = false;
    overHandicap = false;
    overAlarm = false;
    overCall = false;
  } 
  else if (overCircle1(circleX1, circleY1, circleSize)){
     circleOver1 = true;
     circleOver = false;
     circleOver2 = false;
     circleOverF4 = false;
     circleOverF5 = false;
     circleOverF6 = false;
     overOpenDoors = false;
     overCloseDoors = false;
     overHandicap = false;
     overAlarm = false;
     overCall = false;
  }
  else if (overCircle2(circleX2, circleY2, circleSize)){
     circleOver2 = true;
     circleOver = false;
     circleOver1 = false;
     circleOverF4 = false;
     circleOverF5 = false;
     circleOverF6 = false;
     overOpenDoors = false;
     overCloseDoors = false;
     overHandicap = false;
     overAlarm = false;
     overCall = false;
  }
  else if (overCircleF4(F4X, F4Y, circleSize)){
     circleOver2 = false;
     circleOver = false;
     circleOver1 = false;
     circleOverF4 = true;
     circleOverF5 = false;
     circleOverF6 = false;
     overOpenDoors = false;
     overCloseDoors = false;
     overHandicap = false;
     overAlarm = false;
     overCall = false;
  }
  else if (overCircleF5(F5X, F5Y, circleSize)){
     circleOver2 = false;
     circleOver = false;
     circleOver1 = false;
     circleOverF4 = false;
     circleOverF5 = true;
     circleOverF6 = false;
     overOpenDoors = false;
     overCloseDoors = false;
     overHandicap = false;
     overAlarm = false;
     overCall = false;
  }
  else if (overCircleF6(F6X, F6Y, circleSize)){
     circleOver2 = false;
     circleOver = false;
     circleOver1 = false;
     circleOverF4 = false;
     circleOverF5 = false;
     circleOverF6 = true;
     overOpenDoors = false;
     overCloseDoors = false;
     overHandicap = false;
     overAlarm = false;
     overCall = false;
  }
  else if (overOpenDoors(openX, openY, circleSize)){
     circleOver2 = false;
     circleOver = false;
     circleOver1 = false;
     circleOverF4 = false;
     circleOverF5 = false;
     circleOverF6 = false;
     overOpenDoors = true;
     overCloseDoors = false;
     overHandicap = false;
     overAlarm = false;
     overCall = false;
  }
  else if (overCloseDoors(closeX, closeY, circleSize)){
     circleOver2 = false;
     circleOver = false;
     circleOver1 = false;
     circleOverF4 = false;
     circleOverF5 = false;
     circleOverF6 = false;
     overOpenDoors = false;
     overCloseDoors = true;
     overHandicap = false;
     overAlarm = false;
     overCall = false;
  }
  else if (overHandicap(handicapX, handicapY, circleSize)){
     circleOver2 = false;
     circleOver = false;
     circleOver1 = false;
     circleOverF4 = false;
     circleOverF5 = false;
     circleOverF6 = false;
     overOpenDoors = false;
     overCloseDoors = false;
     overHandicap = true;
     overAlarm = false;
     overCall = false;
  }
  else if (overAlarm(alarmX, alarmY, alarmW, alarmH)){
     circleOver2 = false;
     circleOver = false;
     circleOver1 = false;
     circleOverF4 = false;
     circleOverF5 = false;
     circleOverF6 = false;
     overOpenDoors = false;
     overCloseDoors = false;
     overHandicap = false;
     overAlarm = true;
     overCall = false;
  }
  else if (overCall(callX, callY, callW, callH)){
     circleOver2 = false;
     circleOver = false;
     circleOver1 = false;
     circleOverF4 = false;
     circleOverF5 = false;
     circleOverF6 = false;
     overOpenDoors = false;
     overCloseDoors = false;
     overHandicap = false;
     overAlarm = false;
     overCall = true;
  }
  else {
    circleOver = false;
    circleOver1 = false;
    circleOver2 = false;
    circleOverF4 = false;
    circleOverF5 = false;
    circleOverF6 = false;
    overOpenDoors = false;
    overCloseDoors = false;
    overHandicap = false;
    overAlarm = false;
    overCall = false;
  }
}

//Checks where mouse is relative to one of the circles
boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

//Checks where mouse is relative to one of the circles
boolean overCircle1(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

//Checks where mouse is relative to one of the circles
boolean overCircle2(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircleF4(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircleF5(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircleF6(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overOpenDoors(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCloseDoors(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overHandicap(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overAlarm(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCall(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
