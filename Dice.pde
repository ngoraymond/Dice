void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	//your code here
	background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	int sum=0;
	int numFive=0;
	int numFour=0;
	for(int x = 50; x<=450 ; x+=45)
	{
		for(int y = 25; y <=390; y+=45)
		{
			Die casino = new Die(x,y);
			casino.show();
			casino.roll();
			sum+=casino.num;
			if(casino.num==5){
				numFive++;
			}
			 if(casino.num==4){
				numFour++;
			}

		}
	}
	/*
	fill(255);
	rect(425,470,75,30);
	fill(0);
	textSize(10);
	text("TOTAL: "+sum,430,490);
	*/
	textSize(13);
	text(sum+"/546",325,465);
	fill(255);
	rect(50,450,273,20);
	fill(0,0,255);
	rect(50,450,sum/2,20);
	fill(255,0,0);
	line(187,450,187,470);
	fill(0);
	if(sum>273){
		text("WIN",100,490);
	} else{
		text("LOSE",100,490);
	}

	if(numFive==5)
	{
		background(0);
		textSize(17);
		fill(255);
		text("You Rolled "+numFive+" Fives! Click again",100,250);
	}
	if(numFour==4){
		background(0);
		textSize(17);
		fill(255);
		text("You rolled "+numFour+" Fours! SAD! Tremendously sad!",75,250);
	}


}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX;
	int myY;
	int num;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		
		myY = y;
		myX = x;
		num = (int)(Math.random()*6)+1;
		
	}
	void roll()
	{
		//your code here
		if(num==1){
			ellipse(myX+20,myY+20,5,5);
		} 
		else if (num==2)
		 {
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+30,myY+30,5,5);
		}
		else if (num==3) {
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+20,myY+20,5,5);
			ellipse(myX+30,myY+30,5,5);
		}
		else if (num==4) {
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+30,myY+10,5,5);
			ellipse(myX+10,myY+30,5,5);
			ellipse(myX+30,myY+30,5,5);
		}
		else if(num==5){
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+30,myY+10,5,5);
			ellipse(myX+10,myY+30,5,5);
			ellipse(myX+30,myY+30,5,5);
			ellipse(myX+20,myY+20,5,5);
		}
		else {
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+30,myY+10,5,5);
			ellipse(myX+10,myY+20,5,5);
			ellipse(myX+30,myY+20,5,5);
			ellipse(myX+10,myY+30,5,5);
			ellipse(myX+30,myY+30,5,5);

		}

	}
	void show()
	{
		//your code here
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		rect(myX,myY,40,40);
		fill(0);
		
	}
}
