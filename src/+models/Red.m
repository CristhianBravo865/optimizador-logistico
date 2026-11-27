classdef Red < handle
%RED  Red logística: almacenes, puntos de venta y rutas.
%
%   red = models.Red(nodosTbl, rutasTbl)
%
%   Cada ruta (i,j) tiene una conductancia g_ij = capacidad / costo_unit.
%   El flujo en la ruta es f_ij = g_ij * (p_i - p_j) y en cada nodo se cumple
%   la conservación  sum_j g_ij (p_i - p_j) = s_i,  que da el sistema L*p = s.

    properties
        Nodos   table   % id, nombre, tipo, oferta, x, y
        Rutas   table   % origen, destino, distancia_km, capacidad, costo_unit
    end

    methods
        function obj = Red(nodosTbl, rutasTbl)
            obj.Nodos = nodosTbl;
            obj.Rutas = rutasTbl;
        end

        function [L, orden] = laplacianaReducida(obj) %#ok<STOUT,MANU>
            %LAPLACIANAREDUCIDA  Laplaciana sin la fila/columna del nodo de referencia.
            %   Salidas: L (n-1 x n-1, simétrica definida positiva), orden (ids de los nodos)
            %   Complejidad: O(n^2)
            error('models:noImplementado', 'Red.laplacianaReducida todavía no está implementada.');
        end

        function F = flujos(obj, p) %#ok<STOUT,INUSD,MANU>
            %FLUJOS  Flujo en cada ruta a partir de los potenciales p.
            %   Salida: tabla origen, destino, flujo.   Complejidad: O(rutas)
            error('models:noImplementado', 'Red.flujos todavía no está implementada.');
        end

        function C = costoTotal(obj, F) %#ok<STOUT,INUSD,MANU>
            %COSTOTOTAL  Costo de transporte  sum c_ij * L_ij * |f_ij|.   Complejidad: O(rutas)
            error('models:noImplementado', 'Red.costoTotal todavía no está implementada.');
        end

        function S = saturacion(obj, F) %#ok<STOUT,INUSD,MANU>
            %SATURACION  Relación |flujo| / capacidad por ruta.   Complejidad: O(rutas)
            error('models:noImplementado', 'Red.saturacion todavía no está implementada.');
        end
    end
end
