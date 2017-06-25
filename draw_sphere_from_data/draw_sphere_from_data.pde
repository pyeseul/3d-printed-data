/* 
3D Printed Data Workshop at ITP Camp 2017 by Yeseul Song
load simple numeric data from a .csv file and use to draw different sizes of spheres
*/

import peasy.*;
PeasyCam cam;

import nervoussystem.obj.*;
boolean record = false;

Table table;

void setup() {
  size(500, 500, P3D);
  
  cam = new PeasyCam(this, width/2, height/2, 0, 400);
  cam.setMinimumDistance(100);
  cam.setMaximumDistance(1000);
}

void draw() {
  background(255);
  stroke(0);
  
  table = loadTable("size.csv", "header"); 
  
  if (record) {
    beginRecord("nervoussystem.obj.OBJExport", "spheres.obj");
  }
  
  for (TableRow row : table.rows()) {
    int id = row.getInt("id");
    int size = row.getInt("size");
    
    pushMatrix();
    translate(80*id, height/2, 0);
    sphere(size);
    popMatrix();
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