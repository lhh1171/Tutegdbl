package bean;

public class Square {
    private int side = 1;						// 定义私有变量side表示正方形的边长

    public Square() {						// 无参的构造函数
    }

    public int getSide() {
        return side;							// 返回变量side的值
    }

    public void setSide(int side) {
        this.side = side;
    }

    public void setRadius(int newSide) {
        side = newSide;						// 给变量side赋值
    }

    public double squareLength() {
        return side * 4.0;						// 计算正方形的周长
    }

    public double squareArea() {
        return side * side;					// 计算正方形的面积
    }
}