# Quantum Computing

Learning about Quantum Computing using `Q#` and `Visual Studio Code`.

## Read about following to understand about Quantum concepts and their relevance

+ Particle-Wave Duality
+ Double slit experiment
+ Heisenberg Uncertainity Principle
+ Stern-Gerlach Experiment
+ 4 Bell states

## Concepts

In a certain sense, a quantum computer isn't really computing at all. It's just allowing the laws of physics to act on a system designed for a very particular purpose.

Quantum computing is about processing information with the quantum state and extracting the final form of that information through the measurements.

### Quantum bits or `qubits`

Qubits which are isolated quantum objects that behave quantum mechanically, with two or more states that can be distinguished with a measurement.

A bit is usually stored in a classical computer using a transistor that is either conducting an electric signal (the "high voltage" 11 state) or not conducting (the "low voltage" 00 state).

![Quantum objects](Assets/Images/Qubits_1.png)

A `qubit` is similar, but it's crafted out of a **quantum object** — it might be:

+ a spinning particle that can point up or down,
+ a photon that can be polarized vertically or horizontally, or
+ a quantum wire that is charged ("on") or uncharged ("off").

Much like a classical bit, the two possible measurements of a qubit have `1` or `0` assigned to a certain spin, polarization, or electrical charge.  
An isolated qubit with stable assigned states can *store a bit of information* just like a classical bit.  
No matter the type of qubit you have — *a quantum wire, a photon, or a spinning atom* — we choose the **computational states** based on reproducible measurements we can make, and we give them special names because these are **quantum states**, not classical ones.

> Computational states are quantum states useful for computation, which remain unchanged over many measurements, to represent `1` and `0`.

![Quantum states](Assets/Images/Quantum_States_1.png)

The two measurables states of a qubit are called ![|0>](https://latex.codecogs.com/svg.latex?%5Cinline%20%7C0%20%5Crangle) and ![|1>](https://latex.codecogs.com/svg.latex?%5Cinline%20%7C1%20%5Crangle), and we call this way of writing them as **kets**.

### 1. Superposition

+ In classical computer, smallest unit of work is `bit`. In Quantum computers, smallest unit of work is `qubit`.
+ `bit` can have value `0` or `1` at any point of time. *Analogous to Electric switch which is "On" or "Off".*
+ `qubit` can have value `0` or `1` or both at any point of time. *Analogous to Electric dimmer knob which can have any value between "On" and "Off".*
+ In Superposition, `qubit` has value `0` and `1` both with **50% probability** each.
+ Superposition states are a property of quantum mechanics that distinguishes qubits from bits. 
  ![Equation](https://latex.codecogs.com/svg.latex?%5Cinline%20%7C%5Cpsi%5Crangle%20%3D%20a%5Ccdot%7C0%5Crangle%20&plus;%20b%5Ccdot%7C1%5Crangle)
+ A superposition state, the probability of measuring one of the two basis states can be found by finding the relative **squared magnitude** of each of the coefficients.
  ![Superposition state](Assets/Images/SuperpositionState_1.png)

*Note: Measurement of qubit changes its state into one of the computational states, and all the other information in that state is lost.*

The manipulation of qubits during computation uses gates that can modify the coefficients of a superposition, not just flip the state. This vastly increases the information density of a quantum computation.

### 2. Entanglement

+ When two, or more, quantum particles cannot have their states described independently regardless of distance.
+ Einstein called this as *"Spooky Action At a Distance"*
+ Hidden variable or wire that entangles 2 or quantum particles together is explained in Bell's experiment.
+ Entangled Quantum particles when measured can have following states:
  + Odd Parity: particles have opposite state
  + Even Parity: particles have same state
+ Q# works with Even Parity.
+ CHSH Game

### 3. Teleportation

+ This can be used to transfer message from one qubit to another qubit regardless of distance.

## Quantum gates

### 1. `X` Gate --> Flip state of qubit

If we were operating on classical bits, we would use the **NOT** operation to flip a `0` to a `1` (or vice versa), but when we operate on qubits we call it an **X** operation.

![X gate on qubit 0-state](https://latex.codecogs.com/svg.latex?%7C0%5Crangle%20%5Coverset%7BX%7D%7B%5Crightarrow%7D%20%7C1%5Crangle)  
![X gate on qubit 1-state](https://latex.codecogs.com/svg.latex?%7C1%5Crangle%20%5Coverset%7BX%7D%7B%5Crightarrow%7D%20%7C0%5Crangle)

### 2. `H` Gate --> Superpose state for qubit

+ Flip a qubit's computational state to superposition state  
  ![H gate](https://latex.codecogs.com/svg.latex?%7C0%5Crangle%20%5Coverset%7BH%7D%7B%5Crightarrow%7D%20%7C0%5Crangle%20&plus;%20%7C1%5Crangle)
+ It can also flip from different superposition states to computational states  
  ![H gate](https://latex.codecogs.com/svg.latex?%7C0%5Crangle%20&plus;%20%7C1%5Crangle%20%5Coverset%7BH%7D%7B%5Crightarrow%7D%20%7C0%5Crangle)  
  ![H gate](https://latex.codecogs.com/svg.latex?%7C0%5Crangle%20-%20%7C1%5Crangle%20%5Coverset%7BH%7D%7B%5Crightarrow%7D%20%7C1%5Crangle)

