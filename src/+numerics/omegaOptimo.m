function [w, its] = omegaOptimo(A, b, omegas)
%OMEGAOPTIMO  Barrido de omega para SOR: elige el que converge en menos iteraciones.
%
%   Entradas:
%     A, b : sistema
%     omegas : vector de valores a probar
%
%   Salidas:
%     w : omega con menos iteraciones
%     its : iteraciones para cada omega
%
%   Complejidad: O(numel(omegas) * costo de SOR)

error('numerics:noImplementado', 'omegaOptimo todavía no está implementada.');
end
