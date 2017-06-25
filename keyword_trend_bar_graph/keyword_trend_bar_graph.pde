/* 
3D Printed Data Workshop at ITP Camp 2017 by Yeseul Song
make a 3d model using a keyword search trend dataset 
*/

import peasy.*;
PeasyCam cam;

import nervoussystem.obj.*;
boolean record = false;

Table table;

int barX = 20;
int barYScale = 5;
int barZ = 20;
int camOffsetX;
int camMaxDist;
int fileNum = 0;

void setup() {
  
  size(1000, 800, P3D);
  
  table = loadTable("trump-hillary.csv", "header");
  //println(table.getRowCount() + "total rows in table");
  
  camMaxDist = table.getRowCount()*20;
  camOffsetX = table.getRowCount()*barX/2;
  cam = new PeasyCam(this, camOffsetX, height/4, 0, camMaxDist);
  cam.setMinimumDistance(200);
  cam.setMaximumDistance(camMaxDist);
 
}

void draw() {
  println(cam.getPosition());
  background(0);
  stroke(255);
  
  int xPos = 0;
  
  if (record) {
    beginRecord("nervoussystem.obj.OBJExport", "bar_graph"+fileNum+".obj");
    fileNum++;
  }
  
  for (TableRow row : table.rows()) {
    int val = row.getInt("trump");
    if (val == 0) {
      val = 1;
    }
    //println(val);
    
    pushMatrix();
    translate(xPos, height/2-val*barYScale/2, 0);    
    noFill();
    box(barX, val*barYScale, barZ);
    popMatrix();
    xPos+=barX;
  }
  if (record) {
    endRecord();
    record = false;
  }
}

void keyPressed()
{
  if (key == 'o') {
    record = true;
  }
}