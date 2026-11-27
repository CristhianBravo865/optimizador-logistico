classdef TestIntegracion < matlab.unittest.TestCase
%TESTINTEGRACION  Pruebas de numerics.trapecio, numerics.simpson y numerics.romberg.

    methods (TestClassSetup)
        function agregarRuta(tc)
            raiz = fileparts(fileparts(mfilename('fullpath')));
            tc.applyFixture(matlab.unittest.fixtures.PathFixture(fullfile(raiz, 'src')));
        end
    end

    methods (Test)
        function integralesConocidas(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function ordenConvergenciaTrapecio(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function ordenConvergenciaSimpson(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function rombergMenosEvaluaciones(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function simpsonConNImpar(tc)
            tc.assumeFail("Pendiente de implementar");
        end
    end
end
