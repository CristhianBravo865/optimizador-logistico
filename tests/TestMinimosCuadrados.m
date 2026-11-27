classdef TestMinimosCuadrados < matlab.unittest.TestCase
%TESTMINIMOSCUADRADOS  Pruebas de numerics.matrizDiseno, numerics.cholesky y numerics.minimosCuadrados.

    methods (TestClassSetup)
        function agregarRuta(tc)
            raiz = fileparts(fileparts(mfilename('fullpath')));
            tc.applyFixture(matlab.unittest.fixtures.PathFixture(fullfile(raiz, 'src')));
        end
    end

    methods (Test)
        function recuperaCoeficientesConRuido(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function igualAlOperadorBackslash(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function ignoraDiasFaltantes(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function choleskyMatrizNoDefinidaPositiva(tc)
            tc.assumeFail("Pendiente de implementar");
        end
    end
end
