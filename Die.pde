class Die
{
  private int myType;
  public Die(int max)
  {
    myType = max;
  }
  public int getType()
  {
    return myType;
  }
  public int roll()
  {
    return 1 + (int)((myType)* Math.random());
  }
}
