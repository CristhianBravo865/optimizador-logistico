classdef TestIterativos < matlab.unittest.TestCase
%TESTITERATIVOS  Pruebas de numerics.jacobi, numerics.gaussSeidel, numerics.sor y numerics.omegaOptimo.

    methods (TestClassSetup)
        function agregarRuta(tc)
            raiz = fileparts(fileparts(mfilename('fullpath')));
            tc.applyFixture(matlab.unittest.fixtures.PathFixture(fullfile(raiz, 'src')));
        end
    end

    methods (Test)
        function igualAlOperadorBackslash(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function gaussSeidelMenosIteracionesQueJacobi(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function sorConOmegaOptimo(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function noConvergenciaRespetaMaxIter(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function omegaFueraDeRango(tc)
            tc.assumeFail("Pendiente de implementar");
        end
    end
end
