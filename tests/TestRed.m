classdef TestRed < matlab.unittest.TestCase
%TESTRED  Pruebas de models.Red.

    methods (TestClassSetup)
        function agregarRuta(tc)
            raiz = fileparts(fileparts(mfilename('fullpath')));
            tc.applyFixture(matlab.unittest.fixtures.PathFixture(fullfile(raiz, 'src')));
        end
    end

    methods (Test)
        function laplacianaSimetricaDefinidaPositiva(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function conservacionDeFlujo(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function redDesconectadaLanzaError(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function costoTotalCasoSimple(tc)
            tc.assumeFail("Pendiente de implementar");
        end
    end
end
