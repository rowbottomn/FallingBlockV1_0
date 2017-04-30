
PVector mouse;
ArrayList <Block> blocks ;
int numBlocks;

void setup(){
  size (800, 800);
  init();
}

void init(){
  //formatting junk
  rectMode(CENTER);
  imageMode(CENTER);
  
  //initializing variables
 blocks = new ArrayList <Block>();
 mouse = new PVector();
 numBlocks = 0;
}

void mousePressed(){
  if (mouseButton == LEFT){
    blocks.add(new Block(blocks));  
  }
  else if (mouseButton == RIGHT) {
   for (int i = 0; i < blocks.size(); i++){
     Block b = blocks.get(i); 
      if ((abs(mouse.x - b.pos.x) < b.siz.x/2)&&(abs(mouse.y - b.pos.y) < b.siz.y/2)){
         print("Remove");
         blocks.remove(b); 
      }
   }
  }
  
}

void draw(){
  background(100);
  mouse.set(mouseX, mouseY);
  for (int i = 0; i < blocks.size(); i ++){
    blocks.get(i).update();
   blocks.get(i).check(); 
    blocks.get(i).draw();
  }
}