"""
primeiro_circuito.py
====================
Seu primeiro programa quântico!
Cria um par de qubits emaranhados (Estado de Bell)
e mostra o resultado.

Rode com: python primeiro_circuito.py
"""

from qiskit import QuantumCircuit
from qiskit_aer import AerSimulator
from qiskit.visualization import plot_histogram
import matplotlib.pyplot as plt


def main():
    # 1. Criar um circuito com 2 qubits e 2 bits clássicos
    qc = QuantumCircuit(2, 2)

    # 2. Aplicar porta Hadamard no qubit 0 (cria superposição)
    #    Matematicamente: H|0⟩ = (|0⟩ + |1⟩) / √2
    #    Isso é uma multiplicação de matriz! (sua IC de álgebra linear)
    qc.h(0)

    # 3. Aplicar CNOT (emaranha os 2 qubits)
    #    Se qubit 0 = |1⟩, inverte qubit 1
    #    Resultado: (|00⟩ + |11⟩) / √2  (Estado de Bell)
    qc.cx(0, 1)

    # 4. Medir os qubits
    qc.measure([0, 1], [0, 1])

    # 5. Mostrar o circuito no terminal
    print("=" * 50)
    print("  Seu Primeiro Circuito Quântico!")
    print("=" * 50)
    print()
    print(qc.draw(output='text'))
    print()

    # 6. Simular o circuito (1000 execuções)
    simulator = AerSimulator()
    job = simulator.run(qc, shots=1000)
    result = job.result()
    counts = result.get_counts(qc)

    # 7. Mostrar resultados
    print("Resultados (1000 execuções):")
    print("-" * 30)
    for state, count in sorted(counts.items()):
        bar = "█" * (count // 20)
        print(f"  |{state}⟩ : {count:4d} vezes  {bar}")

    print()
    print("Por que só aparece |00⟩ e |11⟩?")
    print("Porque os qubits estão EMARANHADOS!")
    print("Se um é 0, o outro sempre é 0.")
    print("Se um é 1, o outro sempre é 1.")
    print("Isso é a base da computação quântica. 🔬")
    print()

    # 8. Salvar gráfico
    fig = plot_histogram(counts)
    plt.title("Estado de Bell - Qubits Emaranhados")
    plt.savefig("resultado_bell_state.png", dpi=150, bbox_inches='tight')
    print("Gráfico salvo em: resultado_bell_state.png")


if __name__ == "__main__":
    main()
