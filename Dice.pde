       int sound;
       int total;
        void setup()
  {
    size(500,500);
    //background(237, 164, 133);
      noLoop();
  }
  void draw()
  {
    background(237, 164, 133);
    total = 0;
      //your code here
      textSize(10);
          for( int x = 80; x < 500; x+= 160)//for loop
          { 
            for( int y = 80; y< 500; y+= 160)
            {
   Die test= new Die( x,y);
   test.roll();//showing the roll
   test.show();//showing the drawing
   total= total+sound;
   
            }
          }
          textSize(20);
          text(" Volume Sum; "+total,250,485 );
          
    // fill(255); //mouse coordinate finder
    //text("("+mouseX+","+mouseY+")", mouseX, mouseY);

 
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      
      int x;
      int y;
      Die(int xParis, int yLondon) //constructor
      {
          //variable initializations here
          x= xParis;
          y = yLondon;
      }
      void roll()
      {
          //your code here
       sound = (int)(Math.random()*10);
      }
      void show()
      {
          //your code here
          
      fill(0);
       ellipse(x,y,120,120);
      fill(23, 24, 26);
       ellipse(x,y,110,110);
      fill(26, 27, 28);
       ellipse(x,y,100,100);
      fill(32, 34, 36);
       ellipse(x,y,90,90);
      fill(34, 37, 41);
       ellipse(x,y,80,80);
      fill(random(50,250),116,random(100,250));
       ellipse(x,y,60,60);
      fill(225);
       textAlign(CENTER);
       if(sound==0)
       {
         text("volume 0", x,y);
       }
       else if(sound == 1)
       {
         text("volume 1" , x,y);
       }
         else if(sound == 2)
       {
         text("volume 2" , x,y);
       }
       else if(sound == 3)
       {
         text("volume 3" , x,y);
       }
       else if(sound == 4)
       {
         text("volume 4" , x,y);
       }
       else if(sound == 5)
       {
         text("volume 5" , x,y);
       }
       else if(sound == 6)
       {
         text("volume 6" , x,y);
       }
       else if(sound == 7)
       {
         text("volume 7" , x,y);
       }
       else if(sound == 8)
       {
         text("volume 8" , x,y);
       }
       else if(sound == 9)
       {
         text("volume 9" , x,y);
       }
       else if(sound == 10)
       {
         text("volume 10" , x,y);
       }
      }
  }
