# Quantum Notes — 2-Qubit Systems, Dimension, and Bell States

**Connection:** Strang 2.3 (Linear Independence, Basis, Dimension) applied to Quantum Computing

---

## 1-Qubit Review (Day 1)

- 1 qubit lives in $\mathbb{C}^2$ (dimension 2)
- Base: $\{|0\rangle, |1\rangle\}$ — standard basis vectors $e_1, e_2$
- Any state: $|\psi\rangle = \alpha|0\rangle + \beta|1\rangle$ with $|\alpha|^2 + |\beta|^2 = 1$
- Hadamard gate creates 50/50 superposition
- RY gate controls probabilities (biased coin)

---

## 2-Qubit Systems (Day 2)

### Dimension grows exponentially

| Qubits | Dimension | Basis vectors |
|--------|-----------|-------------|
| 1 | $2^1 = 2$ | $\|0\rangle, \|1\rangle$ |
| 2 | $2^2 = 4$ | $\|00\rangle, \|01\rangle, \|10\rangle, \|11\rangle$ |
| 3 | $2^3 = 8$ | $\|000\rangle, \ldots, \|111\rangle$ |
| n | $2^n$ | $2^n$ base vectors |

This exponential growth is central to both the expressive capacity of quantum state spaces and the difficulty of simulating them classically. Dimension alone does not guarantee a computational advantage.

### Computational basis for 2 qubits

$$|00\rangle = \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix}, \quad |01\rangle = \begin{pmatrix} 0 \\ 1 \\ 0 \\ 0 \end{pmatrix}, \quad |10\rangle = \begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix}, \quad |11\rangle = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 1 \end{pmatrix}$$

These are 4 independent vectors in $\mathbb{C}^4$ — they form the identity matrix. Rank = 4, dimension = 4.

Any 2-qubit state is a unique combination of this basis (Strang's basis property).

---

## Bell State and Entanglement

### What is it

The Bell State $|\Phi^+\rangle$ is created by Hadamard + CNOT:

$$|\Phi^+\rangle = \frac{1}{\sqrt{2}}|00\rangle + \frac{1}{\sqrt{2}}|11\rangle = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 \\ 0 \\ 0 \\ 1 \end{pmatrix}$$

### Connection to Strang 2.3

This is a linear combination of the basis vectors and has nonzero amplitudes only for $|00\rangle$ and $|11\rangle$. The coefficients for $|01\rangle$ and $|10\rangle$ are zero.

The state therefore belongs to the subspace spanned by $|00\rangle$ and $|11\rangle$. The full two-qubit space still has dimension 4, while this particular state is one vector within that subspace.

Same concept as Exercise 2: 6 vectors in $\mathbb{R}^4$ only spanned a 3-dimensional subspace.

### Probabilities

$$P(|00\rangle) = \left|\frac{1}{\sqrt{2}}\right|^2 = 50\%$$
$$P(|01\rangle) = |0|^2 = 0\%$$
$$P(|10\rangle) = |0|^2 = 0\%$$
$$P(|11\rangle) = \left|\frac{1}{\sqrt{2}}\right|^2 = 50\%$$

### Entanglement

The Bell State is special because of **entanglement** — the two qubits are correlated. Measuring one determines the other:
- If first qubit = 0 → second qubit is guaranteed 0
- If first qubit = 1 → second qubit is guaranteed 1

This is not the same as two independent coins. The measurement outcomes are correlated, and the state cannot be factored into independent single-qubit states.

### Qiskit verification

```python
qc = QuantumCircuit(2, 2)
qc.h(0)          # Hadamard on qubit 0
qc.cx(0, 1)      # CNOT: qubit 0 controls qubit 1
qc.measure([0,1], [0,1])
```

Result: ~520 times $|11\rangle$, ~480 times $|00\rangle$ — confirming the 50/50 prediction.

---

## Key takeaways

1. Adding qubits doubles the dimension exponentially ($2^n$)
2. The computational base is always the identity matrix of that dimension
3. Specific quantum states may live in lower-dimensional subspaces (like Bell State using only 2 of 4 base vectors)
4. Entanglement creates correlations between qubits that don't exist classically
5. Everything is linear algebra — states are vectors, combinations are unique because of basis properties (Strang 2.3)
