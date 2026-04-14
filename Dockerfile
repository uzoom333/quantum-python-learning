# ============================================
# Dockerfile - Ambiente de Computação Quântica
# Qiskit + Python + Jupyter + Ferramentas
# ============================================

FROM python:3.12-slim

LABEL maintainer="Quantum Dev Environment"
LABEL description="Ambiente completo para desenvolvimento em Computação Quântica com Qiskit"

# Evita prompts durante instalação
ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED=1

# Dependências do sistema
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    g++ \
    git \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Diretório de trabalho
WORKDIR /workspace

# Atualiza pip
RUN pip install --upgrade pip setuptools wheel

# ============================================
# CORE: Qiskit SDK + Runtime IBM
# ============================================
RUN pip install \
    qiskit \
    qiskit-ibm-runtime \
    qiskit-aer

# ============================================
# BIBLIOTECAS QUÂNTICAS EXTRAS
# ============================================
RUN pip install \
    qiskit-algorithms \
    qiskit-machine-learning

# ============================================
# PYTHON CIENTÍFICO (Base pra IC e Quântica)
# ============================================
RUN pip install \
    numpy \
    scipy \
    matplotlib \
    pandas \
    sympy

# ============================================
# JUPYTER (Notebooks interativos)
# ============================================
RUN pip install \
    jupyterlab \
    ipykernel \
    ipywidgets

# ============================================
# VISUALIZAÇÃO DE CIRCUITOS QUÂNTICOS
# ============================================
RUN pip install \
    pylatexenc \
    pillow

# ============================================
# FERRAMENTAS DE DESENVOLVIMENTO
# ============================================
RUN pip install \
    pytest \
    black \
    flake8

# Porta do Jupyter
EXPOSE 8888

# Cria diretório para projetos
RUN mkdir -p /workspace/projetos /workspace/notebooks

# ============================================
# Script de boas-vindas com info útil
# ============================================
RUN echo '#!/bin/bash\n\
echo ""\n\
echo "================================================"\n\
echo "  🔬 Ambiente Quântico Pronto!"\n\
echo "================================================"\n\
echo ""\n\
echo "  Qiskit SDK:        $(python -c \"import qiskit; print(qiskit.__version__)\" 2>/dev/null || echo \"instalado\")"\n\
echo "  Python:            $(python --version)"\n\
echo ""\n\
echo "  Comandos úteis:"\n\
echo "  ➜ jupyter lab --ip=0.0.0.0 --allow-root"\n\
echo "  ➜ python seu_script.py"\n\
echo ""\n\
echo "  Estrutura:"\n\
echo "  /workspace/projetos   → seus projetos"\n\
echo "  /workspace/notebooks  → jupyter notebooks"\n\
echo "================================================"\n\
echo ""\n\
exec "$@"' > /entrypoint.sh && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
