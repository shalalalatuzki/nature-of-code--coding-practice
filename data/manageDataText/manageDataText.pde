//String[] lines=loadStrings("text.txt");
//println("there are "+lines.length+" lines");
//printArray(lines);
int[] data;
void setup(){
  size(640,320);
  String[] temp=loadStrings("data.csv");
  data=int(split(temp[0],","));
  println(data);
}
void draw(){
  background(255);
  stroke(0);
  for(int i=0;i<data.length;i++){
    fill(data[i]);
    rect(i*20,0,20,data[i]);
  }
  noLoop();
}
