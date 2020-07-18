# Quantum Computing

Information: 

+ It is any observation, data or knowledge that reduces uncertainity.
+ ![Information formula](https://latex.codecogs.com/svg.latex?%5Ctext%7BInformation%7D%20%3D%20log_2n%5Ctext%7B%20bits%7D)
+ Quantum computing is useful in **Information processing** instead of its *storage*.

## Qubit

+ It is a two-state quantum object used for information storage and processing in a quantum computer.
+ A qubit can be measured in two different states, called its **computational states** and given the symbols ![|0>](https://latex.codecogs.com/svg.latex?%5Cinline%20%7C0%20%5Crangle) and ![|1>](https://latex.codecogs.com/svg.latex?%5Cinline%20%7C1%20%5Crangle).

### Superposition

+ A qubit can occupy **superpositions** of these two computational states, of which there are many more than two:  
  ![Equation](https://latex.codecogs.com/svg.latex?a_1%20%5Ccdot%20%7C0%5Crangle%20&plus;%20a_2%20%5Ccdot%20%7C1%5Crangle). In this equation, ![|0>](https://latex.codecogs.com/svg.latex?%5Cinline%20%7C0%20%5Crangle) and ![|1>](https://latex.codecogs.com/svg.latex?%5Cinline%20%7C1%20%5Crangle) are two computational states and ![a_1](https://latex.codecogs.com/svg.latex?a_1) and ![a_2](https://latex.codecogs.com/svg.latex?a_2) are non-zero and are called superpositions.
+ The probability of each computational state in superposition is equal to the **relative squared magnitude** of each coefficient.
+ In a standard **normalization** without loss of generality:  
  ![standard normalization rule](https://latex.codecogs.com/svg.latex?%7Ca_1%7C%5E2%20&plus;%20%7Ca_2%7C%5E2%20%3D%201)
+ A well-behaved quantum state in superposition has coefficients which are normalized:  
  ![Standard normalization rule](https://latex.codecogs.com/svg.latex?%5Csum%7Ca_i%7C%5E2%20%3D%201)
+ Another representation of linear combination of qubit in superposition state is:  
  ![Vector rep](https://latex.codecogs.com/svg.latex?a_1%20%5Ccdot%20%7C0%5Crangle%20&plus;%20a_2%20%5Ccdot%20%7C1%5Crangle%20%3D%20%5Cbegin%7Bbmatrix%7Da_1%20%5C%5C%20a_2%20%5Cend%7Bbmatrix%7D)  
  ![Vector and color rep](/Assets/Images/Qubits_UnitVector_Color.png)
+ There are more than one uniform superposition state "halfway" between ![|0>](https://latex.codecogs.com/svg.latex?%5Cinline%20%7C0%20%5Crangle) and ![|1>](https://latex.codecogs.com/svg.latex?%5Cinline%20%7C1%20%5Crangle):

  + ![Equation-1](https://latex.codecogs.com/svg.latex?%5Cfrac%7B1%7D%7B%5Csqrt%7B2%7D%7D%20%5Ccdot%20%7C0%5Crangle%20&plus;%20%5Cfrac%7B1%7D%7B%5Csqrt%7B2%7D%7D%20%5Ccdot%20%7C1%5Crangle%20%3D%20%5Cfrac%7B1%7D%7B%5Csqrt%7B2%7D%7D%20%5Cbegin%7Bbmatrix%7D1%20%5C%5C%201%20%5Cend%7Bbmatrix%7D)
  + ![Equation-2](https://latex.codecogs.com/svg.latex?%5Cfrac%7B1%7D%7B%5Csqrt%7B2%7D%7D%20%5Ccdot%20%7C0%5Crangle%20-%20%5Cfrac%7B1%7D%7B%5Csqrt%7B2%7D%7D%20%5Ccdot%20%7C1%5Crangle%20%3D%20%5Cfrac%7B1%7D%7B%5Csqrt%7B2%7D%7D%20%5Cbegin%7Bbmatrix%7D1%20%5C%5C%20-1%20%5Cend%7Bbmatrix%7D)
  + *These uniform superpositions are effective for achieving Quantum parallelism.*  
  + These two uniform superposition states will be the workhorses of our computation, so they are given a special name **the Hadamard states** and special symbols showing they are a combination of ![|0>](https://latex.codecogs.com/svg.latex?%5Cinline%20%7C0%20%5Crangle) and ![|1>](https://latex.codecogs.com/svg.latex?%5Cinline%20%7C1%20%5Crangle):  
  ![Hadamard states](/Assets/Images/Hadamard_States_1.png)
  + The operation that transforms a deterministic state into a purely probabilistic one is our first quantum gate: **the Hadamard gate H**.

### Quantum gates

#### 1. Hadamard H Gate

+ Applying a H gate on Zero state gives following superposition state:  
  ![H on Zero state](/Assets/Images/H_Gate_On_Zero_State.png)
+ Applying a H gate on One state gives following superposition state:  
  ![H on One state](/Assets/Images/H_Gate_On_One_State.png)
+ ![HH on Zero state](https://latex.codecogs.com/svg.latex?%5Cmathbf%7BH%7D%5Cmathbf%7BH%7D%20%7C0%5Crangle%20%3D%20%7C0%5Crangle)
+ ![HH on One state](https://latex.codecogs.com/svg.latex?%5Cmathbf%7BH%7D%5Cmathbf%7BH%7D%20%7C1%5Crangle%20%3D%20%7C1%5Crangle)
+ Hadamard gate matrix representation:  
  ![H matrix rep](https://latex.codecogs.com/svg.latex?%5Cmathbf%7BH%7D%20%3D%20%5Cdfrac%7B1%7D%7B%5Csqrt%7B2%7D%7D%5Cbegin%7Bbmatrix%7D%201%20%26%201%5C%5C%201%20%26%20-1%20%5Cend%7Bbmatrix%7D)

#### 2. Identity I Gate

![Identity gate](/Assets/Images/IdentityGate.png)

![HH=I](https://latex.codecogs.com/svg.latex?%5Cmathbf%7BH%7D%20%5Ccdot%20%5Cmathbf%7BH%7D%20%3D%20%5Cmathbf%7BI%7D)

#### 3. Quantum-NOT X Gate

![X gate](/Assets/Images/X_Gate.png)

Matrix representation:  
![matrix rep](https://latex.codecogs.com/svg.latex?%5Cmathbf%7BX%7D%20%3D%20%5Cbegin%7Bbmatrix%7D%200%20%26%201%20%5C%5C%201%20%26%200%20%5Cend%7Bbmatrix%7D)

#### 4. Z Gate

![Z gate](/Assets/Images/Z_Gate.png)

Matrix representation:  
![Z Matrix rep](https://latex.codecogs.com/svg.latex?%5Cmathbf%7BZ%7D%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%200%20%5C%5C%200%20%26%20-1%20%5Cend%7Bbmatrix%7D)

Computation basis and Hadamard basis:

+ The computational basis distinguishes deterministically between the states ![states](https://latex.codecogs.com/svg.latex?%7C0%5Crangle%5Ctext%7B%20and%20%7D%7C1%5Crangle),
+ The Hadamard basis distinguishes between ![](https://latex.codecogs.com/svg.latex?%7C&plus;%5Crangle%5Ctext%7B%20and%20%7D%7C-%5Crangle). We can move back and forth between these two bases by applying the Hadamard gate.

![Basis](/Assets/Images/Computational_Hadamard_Basis.gif)

The visual representation of the four named states is known as **Bloch representation**. In it, the measurement and Hadamard bases are orthogonal to one another; a measurement that is deterministic in the vertical computational basis will be uniformly random in the horizontal Hadamard basis, and vice versa.
