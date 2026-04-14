# Strang 2.3 — Linear Independence, Basis, and Dimension

**Source:** Gilbert Strang, *Linear Algebra and Its Applications*, 4th ed., Section 2.3 (p. 103–114)

---

## 1. Linear Independence

A set of vectors is **linearly independent** if the only way to combine them to get zero is with all weights equal to zero:

$$c_1 v_1 + c_2 v_2 + \cdots + c_k v_k = 0 \quad \Rightarrow \quad c_1 = c_2 = \cdots = c_k = 0$$

If there is any other combination (with some $c_i \neq 0$) that gives zero, the vectors are **dependent** — one of them is a combination of the others.

**How to test:** put the vectors as columns of a matrix $A$ and solve $Ac = 0$. If the nullspace has only the zero vector → independent. If it has more → dependent.

**Important rule (Strang 2G):** if you have $n$ vectors in $\mathbb{R}^m$ and $n > m$, they are **always dependent**. Example: 4 vectors in $\mathbb{R}^3$ are always dependent.

### Example we worked through

Vectors in $\mathbb{R}^3$:

$$v_1 = \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix}, \quad v_2 = \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix}, \quad v_3 = \begin{pmatrix} 2 \\ 3 \\ 0 \end{pmatrix}$$

Setting up $c_1 v_1 + c_2 v_2 + c_3 v_3 = 0$ gives the system:

$$c_1 + 2c_3 = 0$$
$$c_2 + 3c_3 = 0$$
$$0 = 0$$

Third equation says nothing → $c_3$ is a **free variable**. Choosing $c_3 = 1$:

- $c_1 = -2$
- $c_2 = -3$
- $c_3 = 1$

We found a non-trivial combination: $-2v_1 - 3v_2 + v_3 = 0$, so the vectors are **dependent**.

Rearranging: $v_3 = 2v_1 + 3v_2$ — the third vector is a combination of the first two.

---

## 2. Rank

**Rank** = number of pivots after Gaussian elimination.

A **pivot** is the first nonzero number in each row of the reduced matrix.

$$\begin{pmatrix} \boxed{1} & 0 & 2 \\ 0 & \boxed{1} & 3 \\ 0 & 0 & 0 \end{pmatrix}$$

- Row 1: pivot = 1 (column 1)
- Row 2: pivot = 1 (column 2)
- Row 3: all zeros → no pivot

**2 pivots → rank = 2.** This means only 2 of the 3 vectors are genuinely independent.

You don't sum the pivot values — you just **count how many** there are.

---

## 3. Spanning

A set of vectors **spans** a space $V$ if every vector in $V$ can be written as a combination of them.

From our example: $v_1, v_2, v_3$ all have the form $(a, b, 0)$ — third component is always zero. So they span the **x-y plane**.

But $v_3$ is redundant (it's a combination of $v_1$ and $v_2$). Just $v_1$ and $v_2$ already span the same plane.

On the other hand, $v_1$ alone only spans a **line** — not enough to cover the plane.

- Too many vectors = redundancy (dependent ones don't add new directions)
- Too few vectors = doesn't cover the whole space

---

## 4. Basis

A **basis** is the "perfect" set of vectors — it satisfies both properties at once:

1. **Independent** (no vector is a combination of the others — nothing extra)
2. **Spans the space** (every vector in the space can be written as their combination — nothing missing)

From our example:
- $\{v_1\}$ alone → independent but doesn't span the plane. **Not a basis.**
- $\{v_1, v_2, v_3\}$ → spans the plane but dependent. **Not a basis.**
- $\{v_1, v_2\}$ → independent AND spans the plane. **Basis!**

**Key property:** if vectors form a basis, then every vector in the space has a **unique** combination.

Example: $(5, 3, 0) = 5v_1 + 3v_2$. There is no other way to write $(5, 3, 0)$ using $v_1$ and $v_2$. The coefficients 5 and 3 are the only ones that work.

**Quick test:** can you remove any vector and still span the space? If yes → dependent → not a basis. If no → basis.

A space has **infinitely many** different bases, but they all have the same number of vectors.

---

## 5. Dimension

**Dimension** = number of vectors in any basis of the space.

- x-y plane: any basis has 2 vectors → dimension = 2
- $\mathbb{R}^3$: any basis has 3 vectors → dimension = 3

Connects to rank: $\text{rank}(A) = \text{dimension of column space}$

---

## 6. Connection to Quantum Computing

### Computational basis

A qubit lives in a 2-dimensional space. The standard basis is:

$$|0\rangle = \begin{pmatrix} 1 \\ 0 \end{pmatrix}, \quad |1\rangle = \begin{pmatrix} 0 \\ 1 \end{pmatrix}$$

These are literally $e_1$ and $e_2$ — the standard basis from linear algebra.

### Superposition = linear combination of basis vectors

Any qubit state is a combination of the basis:

$$|\psi\rangle = \alpha|0\rangle + \beta|1\rangle$$

Just like $(5, 3, 0) = 5v_1 + 3v_2$, a qubit state is $\alpha$ times $|0\rangle$ plus $\beta$ times $|1\rangle$.

### The rule $|\alpha|^2 + |\beta|^2 = 1$

When you **measure** a qubit, it collapses to $|0\rangle$ or $|1\rangle$:

- Probability of $|0\rangle$ = $|\alpha|^2$
- Probability of $|1\rangle$ = $|\beta|^2$

Since the result must be one or the other, probabilities sum to 1 (100%).

**Analogy:** a coin spinning in the air (superposition) that lands as heads or tails (measurement). The rule just guarantees the probabilities make sense.

### Hadamard gate = equal superposition

$$H|0\rangle = \frac{1}{\sqrt{2}}|0\rangle + \frac{1}{\sqrt{2}}|1\rangle$$

Here $\alpha = \beta = \frac{1}{\sqrt{2}}$, so $|\alpha|^2 = |\beta|^2 = \frac{1}{2}$ → 50/50.

This matched our Qiskit experiment: ~499 times $|0\rangle$, ~501 times $|1\rangle$.

---

## Qiskit experiments (Day 1)

**Part 1 — No gate:** qubit stays in $|0\rangle$ → measured 0 all 1000 times (100%).

**Part 2 — Hadamard:** creates 50/50 superposition → ~500/500 split.

**Part 3 — RY gate:** custom rotation to create "biased coin" with controlled probabilities.

Notebook: `strang-2.3-quantum.ipynb`
