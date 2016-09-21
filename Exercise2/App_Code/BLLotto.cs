using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class BLLotto
{
    Random random = new Random();
    private int[] lottery;
    public int[] DrawLotto(int numbersToDraw, int largestValue)
    {
        lottery = new int[numbersToDraw];

        for (int i = 0; i < numbersToDraw; i++)
        {
            int nextNumber;

            do
            {
                nextNumber = random.Next(1, largestValue);
            } while (lottery.Contains(nextNumber));

            lottery[i] = nextNumber;
        }

        Array.Sort(lottery);
        return lottery;
    }
}