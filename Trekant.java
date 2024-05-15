import processing.core.*;

public class Trekant{

private int x1;
private int y1;
private int x2;
private int y2;
private int x3;
private int y3;

private PApplet p;

public Trekant(PApplet p, int x11,int y11, int x22,int y22,int x33,int y33){
 this.p=p;
 x1=x11;
 y1=y11;
 x2=x22;
 y2=y22;
 x3=x33;
 y3=y33;
}

public void trekantdisplay(){
p.triangle(x1, y1, x2, y2, x3, y3);
}

}