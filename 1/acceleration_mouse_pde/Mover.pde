class Mover {
  PVector position;
  //PVector mouse;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  
  Mover() {
   position = new PVector(width/2, height/2);
   velocity = new PVector(0, 0);
   acceleration = new PVector(0, 0);
   //mouse = new PVector(0, 0);
   topspeed = 5;
  }
  
  void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(position);
    mouse.setMag(.5);
    acceleration = mouse;
    
    
    //acceleration = PVector.random2D();
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    position.add(velocity);
  }
  
  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(position.x, position.y, 48, 48);
  }
  
  void checkEdges() {
    if (position.x > width) {
      position.x = 0;
    } else if (position.x < 0) {
      position.x = width;
    }
    
    if (position.y > height) {
      position.y = 0;
    } else if (position.y < 0) {
      position.x = height;
    }
  }
}

    