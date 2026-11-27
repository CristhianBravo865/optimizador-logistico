# Optimizador Logístico de Red

Trabajo final del curso de **Métodos Numéricos** (EPIS - UNSA, 2026B).

Software en MATLAB que planifica el transporte en una red de distribución (almacenes → puntos de venta)
combinando tres métodos numéricos programados desde cero:

```
 demanda_historica.csv ─► [1] MÍNIMOS CUADRADOS ─► curva de demanda d_i(t) de cada punto de venta
                                                      │
                           [2] INTEGRACIÓN ─────────► volumen del horizonte  D_i = ∫ d_i(t) dt
                                                      │
 nodos.csv + rutas.csv ──► [3] SISTEMA ITERATIVO ─► flujos por ruta, saturación y costo total
                                                      │
                           OPTIMIZADOR DE ESCENARIOS ─► configuración de menor costo
```

1. **Mínimos cuadrados** (ecuaciones normales con Cholesky): ajusta la demanda con tendencia y ciclo semanal
   a partir de registros con ruido y días sin dato.
2. **Integración** (trapecio, Simpson compuesto, Romberg): convierte la curva de demanda en el volumen a mover.
3. **Sistemas iterativos** (Jacobi, Gauss-Seidel, SOR): resuelve la conservación de flujo en la red, `L·p = s`,
   con L simétrica definida positiva.

## Requisitos

- MATLAB R2026a (sin toolboxes adicionales).

## Ejecución

```matlab
>> main                 % abre la interfaz gráfica
>> runtests('tests')    % corre las pruebas
```

## Estructura

```
optimizador-logistico/
├── data/                 # CSV de entrada y generador de datos sintéticos
├── docs/                 # perfil del proyecto, reporte QA, paper IEEE y diagramas
├── src/
│   ├── +numerics/        # algoritmos numéricos puros
│   ├── +models/          # red logística, modelo de demanda y escenarios
│   ├── +datos/           # carga, validación y exportación
│   ├── +ui/              # interfaz gráfica (uifigure)
│   └── ejecutarPipeline.m
├── tests/                # pruebas con matlab.unittest
├── main.m
└── README.md
```

## Estado

En desarrollo. La forma de trabajo con ramas y commits está en [docs/GUIA-DE-TRABAJO.md](docs/GUIA-DE-TRABAJO.md).
