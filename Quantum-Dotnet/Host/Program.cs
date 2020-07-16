using System;
using Quantum_Code;
using Microsoft.Quantum.Simulation.Simulators;

namespace Host
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var qsim = new QuantumSimulator())
            {
                HelloQ.Run(qsim).Wait();
            }
        }
    }
}
