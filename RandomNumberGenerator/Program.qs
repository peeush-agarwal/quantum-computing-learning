namespace RandomNumberGenerator {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;     // For "MResetZ"
    open Microsoft.Quantum.Math;            // For "BitSizeI"
    open Microsoft.Quantum.Convert;         // For "ResultArrayAsInt"
    
    //@EntryPoint()
    operation HelloQ() : Unit{
        Message("Hello Quantum World!");
    }

    @EntryPoint()
    operation SampleRandomNumber() : Int{
        let max = 50;
        //Message($"Sampling a random number between 0 and {max}: ");
        //return SampleRandomNumberUptoMax(max);
        let min = 10;
        Message($"Sampling a random number between {min} and {max}: ");
        return SampleRandomNumberInRange(min, max);
    }

    operation GenerateRandomBit() : Result {
        // Allocate a qubit
        using(q = Qubit()){
            // Put the qubit to superposition
            H(q);
            // It now has 50% chance of being 0 or 1
            // Measure qubit value
            return MResetZ(q);
        }
    }

    operation SampleRandomNumberUptoMax(max : Int) : Int{
        mutable output = 0;
        repeat{
            mutable bits = new Result[0];
            for (idxBit in 1..BitSizeI(max)){
                set bits += [GenerateRandomBit()];
            }
            set output = ResultArrayAsInt(bits);
        } until(output <= max);
        return output;
    }

    operation SampleRandomNumberInRange(min : Int, max: Int) : Int{
        mutable output = 0;
        repeat{
            mutable bits = new Result[0];
            for (idxBit in 1..BitSizeI(max)){
                set bits += [GenerateRandomBit()];
            }
            set output = ResultArrayAsInt(bits);
        }until(output >= min and output <= max);
        return output;
    }
}

