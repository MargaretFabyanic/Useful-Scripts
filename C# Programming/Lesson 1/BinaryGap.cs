
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
namespace Lesson1
{

    public class Lesson1
    {


        public static void Main(string[] args)
        {
                
                
            Console.WriteLine(solution(9));//2
            Console.WriteLine(solution(529));//4
            Console.WriteLine(solution(20));//1
            Console.WriteLine(solution(15));//0
            Console.WriteLine(solution(32));//0
                
        }
            
            
            
        public static int solution(int n)
        {

           int arraySize = getSizeOfArray(n);
            int[] BrinaryNumHolder = new int[arraySize];

            int i = 0; 
            while (n > 0) 
            { 
                
                BrinaryNumHolder[i] = n % 2; 
                n = n / 2; 
                i++; 
            } 
            int counter=0;
            int maxZero=0;
            int surroundingOnes=0;
            for(int j =i-1; j>=0;j--)
            {

                if(BrinaryNumHolder[j]==0)
                {
                    counter++;    

                }  
                else 
                {
                    surroundingOnes++;
                    if(counter> maxZero && surroundingOnes==2){
                        surroundingOnes=0;
                        maxZero=counter;
                    }
                    counter=0;      
                }
            

            }
            return maxZero;
        }

                
        static int getSizeOfArray (int n) 
        {

            for( int i =0; ; i++)
            {
                int checkmaxBinaryNumber = (int)Math.Pow(2,i);

                if(checkmaxBinaryNumber>n)
                {
                    return i+1;
                }

            }


        }

    }
}
  