public class Fitness {
      public static decimal calculateBMI(decimal bodyweight, decimal bodyheight)
      {
          decimal BMI= bodyweight/(bodyheight* bodyheight);
          return BMI;
      }
      public static decimal calculatePace(decimal distanceInKm, decimal timeInMinutes)
      {
          decimal Pace= distanceInKm/timeInMinutes;
          return Pace;
      }
}