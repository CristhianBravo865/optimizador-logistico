function [I, T] = romberg(f, a, b, tol, maxNiv)
%ROMBERG  Integración de Romberg (extrapolación de Richardson sobre el trapecio).
%
%   Entradas:
%     f : function handle vectorizado
%     a, b : límites de integración
%     tol : tolerancia entre diagonales
%     maxNiv : número máximo de niveles
%
%   Salidas:
%     I : mejor aproximación
%     T : tabla de Romberg
%
%   Complejidad: O(2^maxNiv)

error('numerics:noImplementado', 'romberg todavía no está implementada.');
end
