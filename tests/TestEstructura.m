classdef TestEstructura < matlab.unittest.TestCase
%TESTESTRUCTURA  Comprueba que todos los módulos del proyecto existen y están en la ruta.

    methods (TestClassSetup)
        function agregarRuta(tc)
            raiz = fileparts(fileparts(mfilename('fullpath')));
            tc.applyFixture(matlab.unittest.fixtures.PathFixture(fullfile(raiz, 'src')));
        end
    end

    properties (TestParameter)
        funcion = {'numerics.matrizDiseno', 'numerics.cholesky', 'numerics.minimosCuadrados', ...
                   'numerics.trapecio', 'numerics.simpson', 'numerics.romberg', ...
                   'numerics.jacobi', 'numerics.gaussSeidel', 'numerics.sor', ...
                   'numerics.omegaOptimo', 'numerics.radioEspectral', ...
                   'models.modeloDemanda', 'models.optimizarEscenarios', ...
                   'datos.cargarDatos', 'datos.exportarResultados', 'ejecutarPipeline', ...
                   'ui.panelDemanda', 'ui.panelRed', 'ui.panelEscenarios'};
        clase = {'models.Red', 'ui.App'};
    end

    methods (Test)
        function existeFuncion(tc, funcion)
            tc.verifyNotEmpty(which(funcion), "No se encuentra " + funcion);
        end

        function existeClase(tc, clase)
            tc.verifyNotEmpty(meta.class.fromName(clase), "No se encuentra la clase " + clase);
        end
    end
end
