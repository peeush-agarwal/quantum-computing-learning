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

    operation Teleportation(sentMessage : Bool) : Bool {
        mutable receivedMessage = false;
        using (register = Qubit[3]) {
            let messageQubit = register[0];
            if(sentMessage){
                X(messageQubit);
            }

            let alice = register[1];
            let bob = register[2];

            // Entangle Alice and Bob qubits together and suppose that these 2 qubits are light years distant apart.
            H(alice);
            CNOT(alice, bob);

            // Transfer message to Alice qubit and this will Teleport message to Bob instantaneously
            CNOT(messageQubit, alice);
            H(messageQubit);

            // Set the basis out of 4 Bell states correctly on Bob qubit.
            let messageState = M(messageQubit);
            let aliceState = M(alice);

            // if message qubit is One, then flip the state of bob in Z-basis
            if(messageState == One){
                Z(bob);
            }
            
            // if alice qubit is One, then flip the state of bob in X-basis
            if(aliceState == One){
                X(bob);
            }

            if(M(bob) == One){
                set receivedMessage = true;
            }

            ResetAll(register);
        }
        
        return receivedMessage;
    }
}