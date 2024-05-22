class RollDistributor
{
  private int minValue, maxValue;
  private ArrayList<Integer> rollArray;
  public RollDistributor()
  {
    rollArray = new ArrayList<Integer>();
    minValue = Dice.size();
    maxValue = 0;
    for(int i = 0; i < Dice.size(); i++)
    {
      maxValue+= Dice.get(i).getType();
    }
  }
  public void resetRoller()
  {
    minValue = Dice.size();
    maxValue = 0;
    for(int i = 0; i < Dice.size(); i++)
    {
      maxValue+= Dice.get(i).getType();
    }
    for(int i = 0; i < rollArray.size(); i++)
    {
      rollArray.remove(i);
      i--;
    }
  }
  public void addRollTotal(int num)
  {
    rollArray.add(num);
  }
  public void show()
  {
    //String distribution = "";
    int[] valuesArray = new int[(1 + maxValue) - minValue];
    //initializes all the values in values array
    for(int i = 0; i < valuesArray.length; i++)
    {
      valuesArray[i] = 0;
    }
    //System.out.println(valuesArray[0]);
    for(int j = 0; j < valuesArray.length; j++)
    {
      for(int i = 0; i < rollArray.size(); i++)
      {
        if(rollArray.get(i) == j + minValue)
        {
          valuesArray[j]++;
        }
      }
    }
    for(int i=0; i < valuesArray.length; i++)
    {
      //distribution = distribution+ " " + (i + minValue) + ": " + valuesArray[i] + ",";
      text(i+minValue,i * (width / valuesArray.length),495);
      rect(i * (width / valuesArray.length),480 - (valuesArray[i] / height),(width / valuesArray.length),(valuesArray[i] / height));
    }
    //System.out.println(distribution);
  }
}
