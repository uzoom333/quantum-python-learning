# Strang 2.3 — Solved Exercises

**Source:** Gilbert Strang, *Linear Algebra and Its Applications*, 4th ed., Section 2.3

---

## Exercise 1

**Problem:** Show that $v_1, v_2, v_3$ are independent but $v_1, v_2, v_3, v_4$ are dependent.

$$v_1 = \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix}, \quad v_2 = \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix}, \quad v_3 = \begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix}, \quad v_4 = \begin{pmatrix} 2 \\ 3 \\ 4 \end{pmatrix}$$

### Part A: $v_1, v_2, v_3$ are independent

Setting up $c_1v_1 + c_2v_2 + c_3v_3 = 0$:

$$\begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} c_1 \\ c_2 \\ c_3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix}$$

Matrix is triangular with 3 pivots (1, 1, 1 on the diagonal). Rank = 3 = number of columns.

Solving from bottom to top:
- Row 3: $c_3 = 0$
- Row 2: $c_2 + 0 = 0 \Rightarrow c_2 = 0$
- Row 1: $c_1 + 0 + 0 = 0 \Rightarrow c_1 = 0$

Only solution is $c_1 = c_2 = c_3 = 0$ → **independent**.

### Part B: $v_1, v_2, v_3, v_4$ are dependent

Setting up $c_1v_1 + c_2v_2 + c_3v_3 + c_4v_4 = 0$:

$$\begin{pmatrix} 1 & 1 & 1 & 2 \\ 0 & 1 & 1 & 3 \\ 0 & 0 & 1 & 4 \end{pmatrix} \begin{pmatrix} c_1 \\ c_2 \\ c_3 \\ c_4 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix}$$

3 equations, 4 unknowns → $c_4$ is a free variable. Choosing $c_4 = 1$:

- Row 3: $c_3 + 4(1) = 0 \Rightarrow c_3 = -4$
- Row 2: $c_2 + (-4) + 3(1) = 0 \Rightarrow c_2 = 1$
- Row 1: $c_1 + 1 + (-4) + 2(1) = 0 \Rightarrow c_1 = 1$

Solution: $c_1 = 1, c_2 = 1, c_3 = -4, c_4 = 1$

Non-trivial combination exists: $v_1 + v_2 - 4v_3 + v_4 = 0$ → **dependent**.

Rearranging: $v_4 = -v_1 - v_2 + 4v_3$.

---

## Exercise 2

**Problem:** Find the largest possible number of independent vectors among $v_1, \ldots, v_6$. This number is the ___ of the space spanned by the v's.

$$v_1 = \begin{pmatrix} 1 \\ -1 \\ 0 \\ 0 \end{pmatrix}, v_2 = \begin{pmatrix} 1 \\ 0 \\ -1 \\ 0 \end{pmatrix}, v_3 = \begin{pmatrix} 1 \\ 0 \\ 0 \\ -1 \end{pmatrix}, v_4 = \begin{pmatrix} 0 \\ 1 \\ -1 \\ 0 \end{pmatrix}, v_5 = \begin{pmatrix} 0 \\ 1 \\ 0 \\ -1 \end{pmatrix}, v_6 = \begin{pmatrix} 0 \\ 0 \\ 1 \\ -1 \end{pmatrix}$$

### Testing $v_1, v_2, v_3$

Matrix with $v_1, v_2, v_3$ as columns and Gaussian elimination:

$$\begin{pmatrix} 1 & 1 & 1 \\ -1 & 0 & 0 \\ 0 & -1 & 0 \\ 0 & 0 & -1 \end{pmatrix}$$

Row 2 + Row 1: $\begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & -1 & 0 \\ 0 & 0 & -1 \end{pmatrix}$

Row 3 + Row 2: $\begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \\ 0 & 0 & -1 \end{pmatrix}$

Row 4 + Row 3: $\begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{pmatrix}$

3 pivots, rank = 3 → $v_1, v_2, v_3$ are **independent**.

### Testing $v_4, v_5, v_6$

System $c_4v_4 + c_5v_5 + c_6v_6 = 0$:

- $0 = 0$ (row 1 gives no info)
- $c_4 + c_5 = 0$
- $-c_4 + c_6 = 0$
- $-c_5 - c_6 = 0$

From row 2: $c_5 = -c_4$. From row 3: $c_6 = c_4$. Row 4 confirms: $c_4 - c_4 = 0$ ✓

$c_4$ is free. Choosing $c_4 = 1$: $c_5 = -1, c_6 = 1$.

$v_4 - v_5 + v_6 = 0$ → $v_4, v_5, v_6$ are **dependent**.

### Dependencies between groups

- $v_4 = v_2 - v_1$ ✓
- $v_5 = v_3 - v_1$ ✓
- $v_6 = v_3 - v_2$ ✓

### Full matrix rank

Matrix with all 6 vectors as columns → Gaussian elimination gives rank = **3**.

**Answer:** Largest number of independent vectors = **3**. This is the **dimension** of the space spanned by the v's.

---

## Exercise 3

**Problem:** Prove that if $a = 0$, $d = 0$, or $f = 0$ (3 cases), the columns of $U$ are dependent.

$$U = \begin{pmatrix} a & b & c \\ 0 & d & e \\ 0 & 0 & f \end{pmatrix}$$

### Case 1: $a = 0$

$$U = \begin{pmatrix} 0 & b & c \\ 0 & d & e \\ 0 & 0 & f \end{pmatrix}$$

First column is the zero vector. A set containing the zero vector is always dependent (choose $c_1 = 1$, all others = 0, and you get $1 \cdot \vec{0} = \vec{0}$). **Dependent.**

### Case 2: $d = 0$

$$U = \begin{pmatrix} a & b & c \\ 0 & 0 & e \\ 0 & 0 & f \end{pmatrix}$$

Pivot in row 1 (column 1), pivot in row 2 jumps to column 3 (since $d = 0$). Column 2 has no pivot → free variable → non-trivial solution to $Uc = 0$ exists. Rank ≤ 2 < 3 columns. **Dependent.**

### Case 3: $f = 0$

$$U = \begin{pmatrix} a & b & c \\ 0 & d & e \\ 0 & 0 & 0 \end{pmatrix}$$

Last row is all zeros → only 2 possible pivots (rows 1 and 2). Rank ≤ 2 < 3 columns. **Dependent.**

### Summary

The pivots of a triangular matrix sit on the diagonal: $a$, $d$, $f$. If any diagonal element is zero, a pivot is lost, rank drops below 3, and the columns become dependent. All 3 pivots must be nonzero for independence.
