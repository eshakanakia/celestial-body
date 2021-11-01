class Celestial{
  float x;
  float y;
  float r;

  float angle = 0;
  Celestial(float x, float y, float r, float angle){
  this.x = x;
  this.y = y;
  this.r = r;
  this.angle = angle; 
  }
  void orbit(Celestial planet, float distance, float period){
   angle += TWO_PI/period;
   this.x = planet.x + cos(this.angle)*distance; 
   this.y = planet.y + sin(this.angle)*distance;
  }
  void display(int r, int g, int b){
   fill(r, g, b);
   ellipse(this.x, this.y, this.r, this.r); 
  }
}
  float day = 15;
  float year = day*365.25;
Celestial sun = new Celestial(500,400,50,0);
Celestial mercury = new Celestial(500,400,10, 0);
Celestial venus = new Celestial(500,400, 15,0);
Celestial earth = new Celestial(500,400, 25, 0);
Celestial moon = new Celestial(500,400, 10, 0);
Celestial mars = new Celestial(500,400,10,0);
Celestial jupiter = new Celestial(500,400,60, 0);
Celestial io = new Celestial(500,400,10,0);
Celestial europa = new Celestial(500,400, 5, 0);

void setup(){
 size(1000,800); 

}

void draw(){
 background(220);
 sun.display(249,233,8); 
 mercury.orbit(sun, 40, day*88);
 mercury.display(92,92,81);
 venus.orbit(sun, 65, day*225);
 venus.display(243,215,74);
 earth.orbit(sun, 100, day*365.25);
 earth.display(31,84,232);
 moon.orbit(earth, 25, day*27);
 moon.display(224,229,240);
 mars.orbit(sun,130, day*687);
 mars.display(252,18,42);
 jupiter.orbit(sun, 190, year*12);
 jupiter.display(252,182,18);
 io.orbit(jupiter, 45, day*1.75);
 io.display(247,241,49);
 europa.orbit(jupiter, 35, day*3.5);
 europa.display(249,248,230);
}
