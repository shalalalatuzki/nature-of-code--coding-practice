Table table;
Bubble[] bubble;
void setup(){
  size(640,480);
  loadData();
}
void draw(){
  background(255);
  for(int i=0;i<bubble.length;i++){
    bubble[i].display();
  }
}
//load table data initial bubbles
void loadData(){
  table=loadTable("data.csv","header");
  //table=loadTable("data.csv");
  bubble=new Bubble[table.getRowCount()];
  for(int i=0;i<table.getRowCount();i++){
      TableRow row=table.getRow(i);
      int x=row.getInt("x");
      int y=row.getInt("y");
      float diameter=row.getFloat("diameter");
      String name=row.getString("name");
      bubble[i]=new Bubble(x,y,diameter,name);
  }
}
//mouse pressed add row and add bubbles when rows over 10 ,remove one
void mousePressed(){
  TableRow row=table.addRow();
  row.setInt("x",mouseX);
  row.setInt("y",mouseY);
  row.setFloat("diameter",random(20,40));
  row.setString("name","cute");
  
  if(table.getRowCount()>10){
    table.removeRow(0);
  }
  saveTable(table,"data/data.csv");
  loadData();
}
