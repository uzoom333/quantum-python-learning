# Quantum Computing and Linear Algebra Learning

This repository is an academic learning portfolio connecting my Linear Algebra studies with small quantum-computing experiments in Python and Qiskit.

## Motivation

Quantum computing brings together mathematics, computer science, and physical intuition. I use this repository to make that learning process concrete: study a mathematical topic, solve exercises, implement the same ideas numerically, and document what I understand.

## Learning Areas

- linear independence, span, basis, dimension, and rank;
- complex vectors, state normalization, and matrix operations;
- computational-basis states and superposition;
- single-qubit gates and measurement;
- two-qubit systems and Bell-state construction;
- comparison of manual calculations, NumPy results, and Qiskit simulations.

## Repository Map

| Resource | Focus |
|---|---|
| [`docs/strang-2.3-notes.md`](docs/strang-2.3-notes.md) | Study notes on independence, basis, rank, and dimension |
| [`strang-2.3-exercises-solved.md`](strang-2.3-exercises-solved.md) | Written solutions to selected Section 2.3 exercises |
| [`strang-2.3-exercises.ipynb`](strang-2.3-exercises.ipynb) | NumPy checks and a two-qubit Bell-state experiment |
| [`strang-2.3-quantum.ipynb`](strang-2.3-quantum.ipynb) | Initial two-qubit circuit exploration |
| [`testjupyter day1.ipynb`](testjupyter%20day1.ipynb) | First Qiskit experiments with measurement, Hadamard, and RY gates |
| [`docs/quantum-day2-notes.md`](docs/quantum-day2-notes.md) | Notes connecting two-qubit systems to vector-space dimension |
| [`qiskitimplementation1.ipynb`](qiskitimplementation1.ipynb) | Qiskit textbook exercises with states, operators, circuits, and sampling |

The filenames reflect the chronology of the study sessions and are preserved for continuity.

## Learning Path

1. Review a Linear Algebra concept using Gilbert Strang's material.
2. Work through selected exercises by hand.
3. Verify the calculations with NumPy.
4. connect the concept to quantum states or operations where appropriate;
5. use Qiskit simulators to inspect circuits and measurement samples;
6. record questions, corrections, and conclusions.

## Current Progress

- Section 2.3 study notes and selected exercises are documented.
- Introductory one- and two-qubit circuits have been implemented.
- NumPy and Qiskit have been used to explore states, operators, measurement, and Bell-state preparation.
- The material remains an active learning record, not a completed curriculum or original quantum-computing research.

## Technologies

- Python
- Jupyter Notebook
- NumPy
- Matplotlib
- Qiskit
- Qiskit Aer

## Running the Notebooks

Clone the repository and create an isolated environment:

```bash
git clone https://github.com/uzoom333/quantum-python-learning.git
cd quantum-python-learning

python3 -m venv .venv
source .venv/bin/activate
python -m pip install jupyter numpy matplotlib qiskit qiskit-aer
jupyter notebook
```

On Windows PowerShell, activate the environment with `.\.venv\Scripts\Activate.ps1`.

The repository does not yet pin dependency versions. Qiskit APIs can change between releases, so recording a reproducible environment is an important future improvement.

## Academic Context

I am a Computer Science student and undergraduate researcher studying Linear Algebra under the guidance of Professor Marco Antônio Menezes. Professor Gilbert Strang's books and lectures are among my main references. This repository supports that mathematical foundation and my gradual introduction to quantum computing.

The notebooks are educational experiments. Simulator sample counts are stochastic observations from a fixed number of shots, not experimental evidence from quantum hardware unless a notebook explicitly states otherwise.

## References

- Gilbert Strang, *Linear Algebra and Its Applications*, 4th ed., Section 2.3
- Gilbert Strang, *Introduction to Linear Algebra*
- [MIT OpenCourseWare — Linear Algebra](https://ocw.mit.edu/courses/18-06-linear-algebra-spring-2010/)
- [IBM Quantum documentation](https://quantum.cloud.ibm.com/docs/en/guides)
- Michael A. Nielsen and Isaac L. Chuang, *Quantum Computation and Quantum Information*

## Author

Renato Morais Mundim Filho

- [GitHub](https://github.com/uzoom333)
- [LinkedIn](https://www.linkedin.com/in/renato-morais-mundim-filho-88919238b/)

Suggestions for exercises, references, corrections, and clearer explanations are welcome.
