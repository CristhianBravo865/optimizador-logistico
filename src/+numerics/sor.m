function r = sor(A, b, omega, x0, tol, maxIter)
%SOR  Sobrerrelajación sucesiva para A*x = b.
%
%   Entradas:
%     A : matriz n x n
%     b : vector n x 1
%     omega : factor de relajación en (0, 2)
%     x0, tol, maxIter : como en numerics.jacobi
%
%   Salidas:
%     r : struct con los mismos campos que numerics.jacobi
%
%   Complejidad: O(n^2) por iteración

error('numerics:noImplementado', 'sor todavía no está implementada.');
end
