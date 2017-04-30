/**
* @author rowbottom
* Block version 1.0- drops from the top and falls until it stacks onto another block
**/

class Block{
  PVector pos;
  PVector vel;
  PVector acc;
  PVector siz;
  float g = 1;
  ArrayList<Block> blocks;// = new ArrayList<Block>();; 
  
  public Block (ArrayList<Block> b){
    blocks = b;
    siz = new PVector(50,50);
    vel = new PVector();
    acc = new PVector (0, g);
    pos = new PVector(width/2, -500);
    //  pos = new PVector(width/2, width  - siz.y/2); //starts at the bottom
  }
  
   void update(){
       vel.add(acc);
       pos.add(vel);
//       pos = new PVector(width/2, height  - (blocks.size() - blocks.indexOf(this)-1)* siz.y - siz.y/2);       //handles adding blocks from the bottom on top of each other
   }
   
   void check(){
       if (pos.y>height  - (blocks.indexOf(this))* siz.y - siz.y/2){//check to see if 
         pos.y = height  - (blocks.indexOf(this))* siz.y - siz.y/2;
         vel.set(0,0);
       }
   }

   void draw(){ 
      fill(255, 0,0);
      rect(pos.x, pos.y, siz.x, siz.y, 2);
      fill(0);
      text(""+blocks.indexOf(this), pos.x, pos.y);
   }
   
}