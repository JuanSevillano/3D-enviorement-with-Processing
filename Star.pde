class Star{
  float x, y, z;
  float pz;
  PImage asteroide; 
  boolean alive;

  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    pz = z;
    alive = true; 
    asteroide = loadImage("data/pollo.png");
  }



  void update() {
    z = z - speed;
    if ( z < 1 ) {
      z = width/2; 
      x = random(-width/2, width/2); 
      y = random(-height/2, height/2); 
      pz = z;
    }
  }

  void show() {
    float sx = map(x / z, 0, 1, 0, width/2);
    float sy = map(y / z, 0, 1, 0, height/2);
    // Scaling star size
    float rw = map(z, 0, width, asteroide.width, 0);
    float rh = map(z, 0, width, asteroide.height, 0);
    float r = map(-z, 0, width, 13, 5);
    float px = map(x / pz, 0, 1, 0, width/2);
    float py = map(y / pz, 0, 1, 0, height/2);
    pushMatrix();
    translate(width/2 + sx, height/2 + sy, -z/2);
    stroke(100);
    strokeWeight(2);
    point(0, 0, 0);
    //line(0, 0, 0, px, py, pz/2);
    //image(asteroide, 0, 0, rw, rh);
    //ellipse(0, 0, r, r);
    popMatrix();
    strokeWeight(1);
    pz = z; 
    //stroke(255);

    //popMatrix();
  }
}