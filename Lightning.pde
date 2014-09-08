int startX=0;
int startY=150;
int endX=0;
int endY=150;

void setup()
{
  size(300,300);
  strokeWeight(5);
  background(0,0,0);
}

void draw()
{
	int randomStroke1=(int)(Math.random()*256);
	int randomStroke2=(int)(Math.random()*256);
	int randomStroke3=(int)(Math.random()*256);

	stroke(randomStroke1, randomStroke2, randomStroke3);
		
	while (endX<300){
		int rNum=(int)(Math.random()*10);
		int rNum2=(int)(Math.random()*19-9);
		endX=startX+rNum;
		endY=startY+rNum2;

		line(startX,startY,endX,endY);
		startX=endX;
		startY=endY;	
	}

}

void mousePressed(){
			startX=0;
			startY=150;
			endX=0;
			endY=150;
}
