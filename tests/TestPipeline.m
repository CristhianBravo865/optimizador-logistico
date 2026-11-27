classdef TestPipeline < matlab.unittest.TestCase
%TESTPIPELINE  Prueba end-to-end de ejecutarPipeline.

    methods (TestClassSetup)
        function agregarRuta(tc)
            raiz = fileparts(fileparts(mfilename('fullpath')));
            tc.applyFixture(matlab.unittest.fixtures.PathFixture(fullfile(raiz, 'src')));
        end
    end

    methods (Test)
        function datosCompletos(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function veintePorCientoDeVacios(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function exportaCSVyPNG(tc)
            tc.assumeFail("Pendiente de implementar");
        end
    end
end
