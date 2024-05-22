ArrayList<Die> Dice;
DiceMaker diceMaker;
RollDistributor roller;
int numRolls;
void setup()
{
  size(1000,500);
  Dice = new ArrayList<Die>();
  diceMaker = new DiceMaker();
  roller = new RollDistributor();
  numRolls = 1000000;
}

void draw()
{
}

void keyPressed()
{
  if(Character.isDigit(key))
  {
    diceMaker.addNum(Integer.parseInt(key + ""));
  } else if(key == 'q')
  {
    roller.resetRoller();
    for(int j =0; j < numRolls; j++)
    {
      int sumDice = 0;
      for(int i = 0; i < Dice.size(); i++)
      {
        sumDice += Dice.get(i).roll();
      }
      roller.addRollTotal(sumDice);
      //System.out.print(sumDice);
      sumDice = 0;
    }
    roller.show();
  } else if(key == 'e')
  {
    Dice.add(new Die(diceMaker.getNumber()));
    //System.out.println(diceMaker.getNumber());
    diceMaker.clearNumber();
  } else if(key == 'w')
  {
    roller.resetRoller();
  }
}
