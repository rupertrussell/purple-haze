// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/KWoJgHFYWxY
// Coding Challenge #30: Phyllotaxis
// http://algorithmicbotany.org/papers/abop/abop-ch4.pdf
// updated 12 July 2020 
// Modified by Rupert Russell for use with Redbubble 
// artwork on redbubble at: 

int n =  180000; // 200010;
float c = 8.5;
float start = 0;
float hu ;
float radius;

float rrr, ggg, hhh, sss, bbb;

void setup() {

  size(7630, 7630);
  // size(500, 500);
  colorMode(HSB, 255, 255, 255);
  background(0);
  stroke(0);
  strokeWeight(.5);
  println("Running");
}

// https://raw.githubusercontent.com/CodingTrain/Rainbow-Code/master/challenges/CC_30_Phyllotaxis/CC_30_Phyllotaxis.pde

void draw() {
  noLoop();
  translate(width / 2, height / 2);
  for (int i = 0; i < n; i++) {
    float a = i * radians(137.51);
    float r = c * sqrt(i);
    float x = r * cos(a);
    float y = r * sin(a);

    rrr = (a + r) % 200;
    ggg = (a - r) % 220;
    bbb = a % 256;
    // fill(rrr,ggg,bbb);
    
    hhh = (a % ( r / 25) ); // not sure why this works but it does returns NaN due to divide by 0

    sss = (a - r) % 256;
    bbb = a % 256;
    
    fill(hhh,sss,bbb);

    // println(rrr + " " + ggg + " "  + bbb);
   //  println(hhh + "," + sss + ","  + bbb);
    println(hhh);
    //   noStroke();

    // radius = 10  + log(i) * 3; // ment to but does not increase dot size as you move outwards // was 2
    // println("radius = " + radius);
    radius = 50;
    


    ellipse(x, y, radius, radius);
  }
  println("Phyllotaxis-25-" + n + "-" + hhh + ".png");
  save("Phyllotaxis-25-" + n + "-" + hhh + ".png");
  println("saved");
  exit();
}
