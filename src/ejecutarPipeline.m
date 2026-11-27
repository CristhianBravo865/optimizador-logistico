function res = ejecutarPipeline(red, demandaTbl, horizonte, metodo, omega)
%EJECUTARPIPELINE  Mínimos cuadrados -> integración -> sistema iterativo.
%
%   Entradas:
%     red : objeto models.Red
%     demandaTbl : tabla de demanda histórica
%     horizonte : [T0 T1] en días
%     metodo : "jacobi" | "gaussSeidel" | "sor"
%     omega : factor de SOR (vacío = óptimo)
%
%   Salidas:
%     res.ajustes, res.volumenes, res.solucion, res.flujos, res.costo, res.tiempos
%
%   Complejidad: Suma de las tres etapas

error('pipeline:noImplementado', 'ejecutarPipeline todavía no está implementada.');
end
