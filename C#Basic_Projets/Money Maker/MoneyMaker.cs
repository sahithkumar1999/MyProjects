using System;

namespace MoneyMaker
{
  class MainClass
  {
    public static void Main(string[] args)
    {
      Console.WriteLine("Welcome to Money Maker!");

      Console.WriteLine("Enter an amount to convert to coins: ");
      string enteredAmount= Console.ReadLine();
      double EnteredAmount = Convert.ToDouble(enteredAmount);

      Console.WriteLine($"{EnteredAmount} cents is equal to...");

      double goldValue=10;
      double silverValue=5;

      double goldCoins= Math.Floor(EnteredAmount/goldValue);
      double remainder= EnteredAmount%goldValue;

      double silverCoins= Math.Floor(remainder/silverValue);
      remainder = remainder%silverValue;

      Console.WriteLine($"Gold Coins : {goldCoins}");
      Console.WriteLine($"Silver Coins: {silverCoins}");
      Console.WriteLine($"Bronze Coins: {remainder}");
    }
  }
}
