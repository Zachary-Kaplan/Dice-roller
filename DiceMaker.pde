class DiceMaker
{
  private int myNum;
  public DiceMaker()
  {
    myNum = 0;
  }
  public void addNum(int num)
  {
    myNum *= 10;
    myNum+= num;
  }
  public int getNumber()
  {
    return myNum;
  }
  public void clearNumber()
  {
    myNum = 0;
  }
}
