namespace Quantum_Code {
    
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;


    operation HelloQ () : Unit {
        Message("Hello quantum world!");
    }

    operation Superposition() : Result{
        mutable result = Zero;
        using (qubit = Qubit()) {   // Qubit ctor instantiates a qubit with base value of Zero
            H(qubit);               // Hadamard operation to Superpose qubit to have values 0 and 1 with 50% probability each
            set result = M(qubit);  // Measure qubit value

            Reset(qubit);
        }
        return result;
    }

    operation Entanglement() : (Result, Result) {
        mutable resultOne = Zero;
        mutable resultTwo = Zero;
        using ((qubitOne, qubitTwo) = (Qubit(), Qubit())) {
            H(qubitOne);
            CNOT(qubitOne, qubitTwo);

            set resultOne = M(qubitOne);
            set resultTwo = M(qubitTwo);

            Reset(qubitOne);
            Reset(qubitTwo);
        }

        return (resultOne, resultTwo);
    }
}