using System;
using Quantum_Code;
using Microsoft.Quantum.Simulation.Simulators;
using Microsoft.Quantum.Simulation.Core;

namespace Host
{
    class Program
    {
        static async System.Threading.Tasks.Task Main(string[] args)
        {
            // using (var qsim = new QuantumSimulator())
            // {
            //     HelloQ.Run(qsim).Wait();
            // }

            const int LOOP_MAX = 1000;
            var ones = 0;
            using (var qsim = new QuantumSimulator())
            {
                for (int i = 0; i < LOOP_MAX; i++)
                {
                    var result = await Superposition.Run(qsim);
                    if(result == Result.One)
                        ones++;
                }
            }

            System.Console.WriteLine("Collapsed states:");
            System.Console.WriteLine($"\t   One: {ones}");
            System.Console.WriteLine($"\t  Zero: {LOOP_MAX - ones}");
        }
    }
}
