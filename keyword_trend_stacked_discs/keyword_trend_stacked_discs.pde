/* 
3D Printed Data Workshop at ITP Camp 2017 by Yeseul Song
make a 3d model using a keyword search trend dataset 
*/

import peasy.*;
PeasyCam cam;

import nervoussystem.obj.*;
boolean record = false;

import shapes3d.*;
import shapes3d.animation.*;
import shapes3d.utils.*;
Extrusion e;
Path path;
Contour contour;
ContourScale conScale;

Table table;

int diskThickness = 5;
int camOffsetX;
int camMaxDist;
int fileNum = 0;

void setup() {
  
  size(1000, 800, P3D);
  
  table = loadTable("trump-hillary.csv", "header");
  println(table.getRowCount() + "total rows in table");

  camMaxDist = table.getRowCount()*10;
  camOffsetX = table.getRowCount()*5/2;
  cam = new PeasyCam(this, camOffsetX, height/2, 0, camMaxDist);
  cam.setMinimumDistance(200);
  cam.setMaximumDistance(camMaxDist);
  
}

void draw() {
  
  background(255);
  stroke(0);
    
  int xPos = 0;
  
  if (record) {
    beginRecord("nervoussystem.obj.OBJExport", "stacked_discs"+fileNum+".obj");
    fileNum++;
  }
  
  for (TableRow row : table.rows()) {
    int val = row.getInt("trump");
    if (val == 0) {
      val = 1;
    }
    //println(val);
    
    path = new P_LinearPath(new PVector(xPos, height/2, 0), new PVector(xPos+, height/2, 0));
    contour = new C_Rod(val, 40);
    conScale = new CS_ConstantScale();
    // Create the texture coordinates for the end
    contour.make_u_Coordinates();
    // Create the extrusion
    e = new Extrusion(this, path, 1, contour, conScale);
    e.drawMode(S3D.WIRE);
    e.strokeWeight(1);
    e.stroke(0);
    //e.fill(200);
    e.draw();
    
    xPos+=diskThickness;
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