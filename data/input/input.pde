PFont f;
String typing="";

String tip1="Click in this sketch and type";
String tip2="Hit return to save what you return";
int start=height/2;
void setup(){
  size(640,320);
  f=createFont("KristenITC-Regular-48.vlw",20);
}
void draw(){
  textFont(f);
  text(tip1,width/3-20,20);
  text(tip2,width/3-20,40);
  text(typing,width/3-20,80);
  
}
void keyPressed(){
    typing=typing+key;
  
}
