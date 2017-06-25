/* 
3D Printed Data Workshop at ITP Camp 2017 by Yeseul Song
load simple numeric data from a .csv file and use to draw different sizes of circles
*/

Table table;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  stroke(0);
  
  table = loadTable("size.csv", "header"); 
  
  for (TableRow row : table.rows()) {
    int id = row.getInt("id");
    int size = row.getInt("size");
    ellipse(80*id, height/2, size, size);
  }
}