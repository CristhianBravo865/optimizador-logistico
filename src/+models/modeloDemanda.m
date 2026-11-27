function dem = modeloDemanda(demandaTbl, base)
%MODELODEMANDA  Ajusta la curva de demanda de cada punto de venta.
%
%   Entradas:
%     demandaTbl : tabla dia, nodo, unidades (puede tener vacíos)
%     base : tipo de modelo (ver numerics.matrizDiseno)
%
%   Salidas:
%     dem : struct array con nodo y ajuste (salida de numerics.minimosCuadrados)
%
%   Complejidad: O(nodos * costo del ajuste)

error('models:noImplementado', 'modeloDemanda todavía no está implementada.');
end
