using System;

namespace MadLibs
{
  class Program
  {
    static void Main(string[] args)
    {
      /*
      This program ...
      Author: ...
      */


      // Let the user know that the program is starting:
      Console.WriteLine("Mad Libs has started");


      // Give the Mad Lib a title:
      string title = "My Daily Routine";

      Console.WriteLine(title);
      // Define user input and variables:

      Console.WriteLine("Enter a name: ");
      string name= Console.ReadLine();

      Console.WriteLine("Enter First adjective: ");
      string adj1 = Console.ReadLine();

      Console.WriteLine("Enter Second adjective: ");
      string adj2= Console.ReadLine();

      Console.WriteLine("Enter Third adjective: ");
      string adj3= Console.ReadLine();

      Console.WriteLine("Enter an Verb: ");
      string verb= Console.ReadLine();

      Console.WriteLine("Enter first noun: ");
      string noun1= Console.ReadLine();

      Console.WriteLine("Enter Second noun: ");
      string noun2= Console.ReadLine();

      Console.WriteLine("Enter an Animal: ");
      string animal= Console.ReadLine();

      Console.WriteLine("Enter a Food: ");
      string food= Console.ReadLine();

      Console.WriteLine("Enter a Fruit: ");
      string fruit= Console.ReadLine();

      Console.WriteLine("Enter a Superhero: ");
      string superhero= Console.ReadLine();

      Console.WriteLine("Enter a Country: ");
      string country= Console.ReadLine();

      Console.WriteLine("Enter a Dessert: ");
      string dessert= Console.ReadLine();

      Console.WriteLine("Enter a Year: ");
      string year= Console.ReadLine();


      // The template for the story:

      string story = $"This morning {name} woke up feeling {adj1}. 'It is going to be a {adj2} day!' Outside, a bunch of {animal}s were protesting to keep {food} in stores. They began to {verb} to the rhythm of the {noun1}, which made all the {fruit}s very {adj3}. Concerned, {name} texted {superhero}, who flew {name} to {country} and dropped {name} in a puddle of frozen {dessert}. {name} woke up in the year {year}, in a world where {noun2}s ruled the world.";


      // Print the story:
      Console.WriteLine(story);

    }
  }
}
