Trekant retvinklet;
boolean TextfieldClick1 = false;
boolean TextfieldClick2 = false;
boolean TextfieldClick3 = false;
String Katete1 = "" ;
String Katete2 = "" ;
String Hypotonusen = "" ;
float a = 0;
float b = 0;
float c = 0;

void setup(){
size(1500,1500);
   retvinklet = new Trekant(this,125,125,125,875,875,875);
   background(0,247,255);  
   textAlign(LEFT, CENTER);
   textSize( 30 );
   fill(0);
text("Pytagoras læresætning bruger man til at regne hypotenusen ud på en retvinklet trekant. Hypotenusen er den side af trekanten som står overfor den rette vinkel. Men man kan også regne de to kateter (det er de andre to sider af trekanten) ud på samme måde. Det gøres på denne måde: sqrt(a^2+b^2)=c. ",1000, 10,350,500);
text("Dette program kan bruges ved at vælge de to felter du kender og indskrive værdien i tal. Du kan skrive i felterne når deres firkant er markeret. Når de rigtige værdier er indskrevet kan man klikke på den værdi du gerne vil have værktøjet til at udregne.",1000,10,350,1450);

}

void draw() {
  fill(255,0,0);
retvinklet.trekantdisplay();
textAlign(CENTER, CENTER);
fill(0);
text("Find A=",550,65);
text("Find B=",550,165);
text("Find C=",550,265);
text("A=",355,940);
text("B=",60,450);
text("C=",570,530);
noFill();
if (TextfieldClick1==true) {
    fill(200);
    a=0;
    b=0;
    c=0;
  } else
    fill(255);
  rect(375,900,250,75);
  
  if (TextfieldClick2==true) {
    fill(200);
     a=0;
    b=0;
    c=0;
  } else
    fill(255);
  rect(15,500,95,75);
  
  if (TextfieldClick3==true) {
    fill(200);
       a=0;
    b=0;
    c=0;
  } else
    fill(255);
  rect(600,500,95,75);
  
 
  fill(255);
     rect(600, 45, 200, 40);
  rect(600, 145, 200, 40);
  rect(600, 245, 200, 40);
  fill(0);
  text(Katete1, 375,900,250,75);
  text(Katete2, 15,500,95,75);
  text(Hypotonusen, 600,500,95,75);
   text("a="+a, 600, 45, 200, 40);
  text("b="+b, 600, 145, 200, 40);
  text("c="+c, 600, 245, 200, 40);

}
  
void keyPressed () {
  if (TextfieldClick1 == true) {
    if (keyCode == BACKSPACE) {
      if (Katete1.length() > 0 ) {
        Katete1 = Katete1.substring( 0, Katete1.length()- 1);
      }
    } else if (keyCode == DELETE) {
      Katete1 = "" ;
    } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
      Katete1 = Katete1 + key;
    }
  }

  if (TextfieldClick2 == true) {
    if (keyCode == BACKSPACE) {
      if (Katete2.length() > 0 ) {
        Katete2 = Katete2.substring( 0, Katete2.length()- 1 );
      }
    } else if (keyCode == DELETE) {
      Katete2 = "" ;
    } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
      Katete2 = Katete2 + key;
    }
  }
  if (TextfieldClick3 == true) {
    if (keyCode == BACKSPACE) {
      if (Hypotonusen.length() > 0 ) {
        Hypotonusen = Hypotonusen.substring( 0, Hypotonusen.length()- 1 );
      }
    } else if (keyCode == DELETE) {
      Hypotonusen = "" ;
    } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
      Hypotonusen = Hypotonusen + key;
    }
  }
}

void mousePressed() {
  if (mouseX>375 && mouseX<375+250 && mouseY>900 && mouseY<900+75) {
    if (mousePressed && mouseButton == LEFT) {
      TextfieldClick1 = !TextfieldClick1;
     
    }
  }
  if (mouseX>15 && mouseX<15+95 && mouseY>500 && mouseY<500+75) {
    if (mousePressed && mouseButton == LEFT) {
      TextfieldClick2 = !TextfieldClick2;
     
    }
  }
  if (mouseX>600 && mouseX<600+95 && mouseY>500 && mouseY<500+75) {
    if (mousePressed && mouseButton == LEFT) {
      TextfieldClick3 = !TextfieldClick3;
    
    }
  }
   if (mouseX>600 && mouseX<600+200 && mouseY>45 && mouseY<45+40) {
    if (mousePressed && mouseButton == LEFT) {
    b = float(Katete2);
    c = float(Hypotonusen);
        a = sqrt(c*c-b*b);
    Katete1="";
    Katete2="";
    Hypotonusen="";
    }
  }
  if (mouseX>600 && mouseX<600+200 && mouseY>145 && mouseY<145+40) {
    if (mousePressed && mouseButton == LEFT) {
   a = float(Katete1);
    c = float(Hypotonusen);
        b = sqrt(c*c-a*a);
    Katete1="";
    Katete2="";
    Hypotonusen="";
    
    }
  }
  if (mouseX>600 && mouseX<600+200 && mouseY>245 && mouseY<245+40) {
    if (mousePressed && mouseButton == LEFT) {
    a = float(Katete1);
    b = float(Katete2);
    c = sqrt(a*a + b*b);
    Katete1="";
    Katete2="";
    Hypotonusen="";

    
  } 
}
  if (Float.isNaN(a) || Float.isNaN(b) || Float.isNaN(c)) {
    text("Dette er ikke en mulig retvinklet trekant",700,345);
          }
  else{
    fill(0,247,255);
    stroke(0,247,255);
    rect(440,320,550,75);
  }




}