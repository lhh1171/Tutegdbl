package bean;

public class Circle {
    private int radius = 1;
    public Circle(){}
    public int getRadius(){
        return  radius;
    }
    public void setRadius(int radius){
        this.radius=radius;
    }
    public double getcirclelength(){
        return radius*2*Math.PI;
    }
    public double getcirclearea(){
        return radius*radius*Math.PI;
    }
}
