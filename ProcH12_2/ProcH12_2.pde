int seconden;
int secleft;
int millisLeft;
int aantalspatie = 0;
boolean racing = true;


void setup(){
  size(500,500);

}

void draw(){
  background(255,255,255);
  
  seconden = millis()/1000;
  secleft = 9 - seconden;
  millisLeft = 1000 - (millis()%1000);
  
    if(!racing){
   secleft = 0;
   millisLeft = 0;
  }
  
  if(seconden >= 10){
   racing = false; 
  }
  fill(0,0,0);
  text("Spaties: " + aantalspatie, 200,200);
  text("Seconden over: " + secleft + "." + millisLeft , 200,220);
  
}

void keyReleased(){
  if(keyCode == 32 && racing){
  aantalspatie++;
  }
}
