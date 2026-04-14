# ⚛️ Quantum Python Learning

My study journal combining **Linear Algebra** (Strang), **Python** and **Quantum Computing** (Qiskit). Updated as I learn.

---

## 📅 Study Log

### Day 1 — Strang 2.3: Linear Independence, Basis, Dimension
**Concepts:** Linear independence, spanning, basis, dimension, rank  
**Quantum connection:** Computational basis {|0⟩, |1⟩}, superposition, measurement probabilities  
**Qiskit practice:**
- Qubit in |0⟩ state → 100% probability of measuring 0
- Hadamard gate → 50/50 superposition
- RY gate → "biased coin" with custom probabilities

📓 [`strang-2.3-quantum.ipynb`](./strang-2.3-quantum.ipynb)

---

## 📂 Structure

```
├── strang-2.3-quantum.ipynb    → Day 1: Independence, basis, superposition
├── testjupyter day1.ipynb      → Initial Jupyter/Qiskit setup tests
└── ...                         → More notebooks coming
```

## 🗺️ Roadmap

### Linear Algebra (Strang)
- [x] 2.3 — Linear Independence, Basis, Dimension
- [ ] 2.4 — The Four Fundamental Subspaces
- [ ] 3.1 — Orthogonal Vectors and Subspaces
- [ ] 3.2 — Projections
- [ ] 3.4 — Orthogonal Bases and Gram-Schmidt
- [ ] 4.1 — Eigenvalues and Eigenvectors
- [ ] 4.2 — Diagonalization

### Quantum Computing (Qiskit)
- [x] Qubit states and measurement
- [x] Hadamard gate and superposition
- [x] RY rotation and probability control
- [ ] Multi-qubit systems and entanglement
- [ ] Quantum gates as matrix operations
- [ ] Bell states
- [ ] Grover's algorithm
- [ ] VQE and QAOA
- [ ] IBM Quantum Developer Certification prep

### Python Scientific
- [x] NumPy basics
- [ ] Matrix operations with NumPy
- [ ] SciPy for linear algebra
- [ ] Matplotlib for visualization

## 🛠️ Environment

- Python 3.12
- Qiskit 2.3.1
- Qiskit Aer 0.17.2
- NumPy / Matplotlib
- Jupyter Lab
- Docker container (`quantum-lab`)

## 📚 References

- STRANG, G. *Linear Algebra and Its Applications.* 4th ed.
- [IBM Quantum Learning](https://learning.quantum.ibm.com/)
- [Qiskit Documentation](https://docs.quantum.ibm.com/)

---

*Updated as I progress. Each notebook connects Strang's linear algebra with quantum computing concepts and Qiskit implementations.*
