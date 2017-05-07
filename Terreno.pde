int cols, rows; 
float h;
float w; 
float scale;
float flying = 0; 
float [][] z;
float speedT, speed; 
// Star array
//ArrayList <Star> stars; 
Star [] stars = new Star[100];

void setup() {
  //fullScreen(P3D);
  size(500,500,P3D);
  h = 3000; 
  w = 2000; 
  scale = 30; 
  noCursor(); 
  cols = (int) (w/ scale); 
  rows = (int) (h / scale);
  // Saving every land top point in grid 
  z = new float[cols][rows];
  smooth(); 
  for(int i = 0; i < stars.length; i++){
  stars[i] = new Star(); 

  }
 // stars = new ArrayList<Star>();
  //stars.add(new Star()); 
  //stars.get(0).start();
} 

void draw() {
  background(0); 
  //translate(width/2, height/2);
  terreno();
  izquierda();
  derecha();
  top(); 
  
  speed = map(mouseX, 0, width, 0, 100); 
  for(int i = 0; i < stars.length; i++){
  stars[i].show();
  stars[i].update();
  }

}

void terreno() {
  // Maping landscape and stars speed
  speedT = map(mouseX, 0, width, 0, 1);
  flying -= speedT; 
  float yoff = flying; 
  for (int y = 0; y < rows; y++) {
    float xoff = 0; 
    for (int x = 0; x < cols; x++) {
      // Every vertex be a noise value 
      z[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
      // noise x axis increment 
      xoff += 0.2;
    }
    // noise y axis increment 
    yoff +=0.2;
  }

  pushMatrix();
  colorMode(HSB, 100);
  //strokeWeight(10);
  stroke(map(noise(yoff*0.1), 0, 1, 0, 100), 50, 100); 
  //fill(map(noise(yoff), 0, 1, 0, 100), 100, 100);
  noFill();
  translate(width/2, height/2+300);
  // Swaying 
  rotateX(PI/2);
  // Moving grid back to center 
  translate(-w/2, -h/2);
  for (int y = 0; y < rows-1; y++) {
    // Creating a mesh 
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      vertex(x*scale, y*scale, z[x][y]);
      vertex(x*scale, (y+1)*scale, z[x][y+1]);
    }
    fill(map(noise(yoff*0.1), 0, 1, 0, 100), 100, map(noise(yoff*0.1), 0, 1, 0, 50));
    endShape();
  }// Close double for
  popMatrix();
}

void izquierda() {
  // Maping landscape and stars speed
  speedT = map(mouseX, 0, width, 0, 1);
  flying -= speedT; 
  float yoff = flying; 
  for (int y = 0; y < rows; y++) {
    float xoff = 0; 
    for (int x = 0; x < cols; x++) {
      // Every vertex be a noise value 
      z[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
      // noise x axis increment 
      xoff += 0.2;
    }
    // noise y axis increment 
    yoff +=0.2;
  }

  pushMatrix();
  colorMode(HSB, 100);
  //strokeWeight(10);
  stroke(map(noise(yoff*0.1), 0, 1, 0, 100), 50, 100); 
  //fill(map(noise(yoff), 0, 1, 0, 100), 100, 100);
  noFill();
  translate(-300, 300);
  // Swaying 
  rotateX(PI/2);
  rotateY(PI/2); 
  // Moving grid back to center 
  translate(-w/2, -h/2);
  for (int y = 0; y < rows-1; y++) {
    // Creating a mesh 
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      vertex(x*scale, y*scale, z[x][y]);
      vertex(x*scale, (y+1)*scale, z[x][y+1]);
    }
    fill(map(noise(yoff*0.1), 0, 1, 0, 100), 100, map(noise(yoff*0.1), 0, 1, 0, 50));
    endShape();
  }// Close double for
  popMatrix();
}

void derecha() {
  // Maping landscape and stars speed
  speedT = map(mouseX, 0, width, 0, 1);
  flying -= speedT; 
  float yoff = flying; 
  for (int y = 0; y < rows; y++) {
    float xoff = 0; 
    for (int x = 0; x < cols; x++) {
      // Every vertex be a noise value 
      z[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
      // noise x axis increment 
      xoff += 0.2;
    }
    // noise y axis increment 
    yoff +=0.2;
  }

  pushMatrix();
  colorMode(HSB, 100);
  //strokeWeight(10);
  stroke(map(noise(yoff*0.1), 0, 1, 0, 100), 50, 100); 
  //fill(map(noise(yoff), 0, 1, 0, 100), 100, 100);
  noFill();
  translate(width+300, 300);
  // Swaying 
  rotateX(PI/2);
  rotateY(PI/2); 
  // Moving grid back to center 
  translate(-w/2, -h/2);
  for (int y = 0; y < rows-1; y++) {
    // Creating a mesh 
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      vertex(x*scale, y*scale, z[x][y]);
      vertex(x*scale, (y+1)*scale, z[x][y+1]);
    }
    fill(map(noise(yoff*0.1), 0, 1, 0, 100), 100, map(noise(yoff*0.1), 0, 1, 0, 50));
    endShape();
  }// Close double for
  popMatrix();
}

void top() {
  // Maping landscape and stars speed
  speedT = map(mouseX, 0, width, 0, 1);
  flying -= speedT; 
  float yoff = flying; 
  for (int y = 0; y < rows; y++) {
    float xoff = 0; 
    for (int x = 0; x < cols; x++) {
      // Every vertex be a noise value 
      z[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
      // noise x axis increment 
      xoff += 0.2;
    }
    // noise y axis increment 
    yoff +=0.2;
  }

  pushMatrix();
  colorMode(HSB, 100);
  //strokeWeight(10);
  stroke(map(noise(yoff*0.1), 0, 1, 0, 100), 50, 100); 
  //fill(map(noise(yoff), 0, 1, 0, 100), 100, 100);
  noFill();
  translate(width/2, -300);
  // Swaying 
  rotateX(PI/2);
  // Moving grid back to center 
  translate(-w/2, -h/2);
  for (int y = 0; y < rows-1; y++) {
    // Creating a mesh 
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      vertex(x*scale, y*scale, z[x][y]);
      vertex(x*scale, (y+1)*scale, z[x][y+1]);
    }
    fill(map(noise(yoff*0.1), 0, 1, 0, 100), 100, map(noise(yoff*0.1), 0, 1, 0, 50));
    endShape();
  }// Close double for
  popMatrix();
}