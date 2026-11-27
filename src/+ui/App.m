classdef App < handle
%APP  Ventana principal del Optimizador Logístico de Red (uifigure con pestañas).
%
%   app = ui.App(raiz)
%
%   Pestañas: Demanda (ui.panelDemanda), Red (ui.panelRed) y Escenarios (ui.panelEscenarios).
%   Guarda el estado compartido entre pestañas: datos cargados, red y resultados del pipeline.

    properties
        Raiz        % carpeta raíz del proyecto
        Figura      % uifigure
        Datos       % struct con nodos, rutas y demanda
        Red         % objeto models.Red
        Resultado   % struct devuelto por ejecutarPipeline
    end

    methods
        function obj = App(raiz)
            obj.Raiz = raiz;
            error('ui:noImplementado', 'La interfaz todavía no está implementada.');
        end
    end
end
