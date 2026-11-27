function aj = minimosCuadrados(t, y, base)
%MINIMOSCUADRADOS  Ajuste por ecuaciones normales A'*A*c = A'*y.
%
%   Entradas:
%     t    : tiempos de las observaciones (se ignoran los NaN de y)
%     y    : observaciones
%     base : tipo de modelo (ver numerics.matrizDiseno)
%
%   Salidas:
%     aj.coef : coeficientes
%     aj.rmse : raíz del error cuadrático medio
%     aj.r2   : coeficiente de determinación
%     aj.f    : function handle del modelo ajustado
%
%   Complejidad: O(m*k^2 + k^3)

error('numerics:noImplementado', 'minimosCuadrados todavía no está implementada.');
end
