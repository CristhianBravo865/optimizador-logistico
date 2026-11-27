classdef TestCargaDatos < matlab.unittest.TestCase
%TESTCARGADATOS  Pruebas de datos.cargarDatos.

    methods (TestClassSetup)
        function agregarRuta(tc)
            raiz = fileparts(fileparts(mfilename('fullpath')));
            tc.applyFixture(matlab.unittest.fixtures.PathFixture(fullfile(raiz, 'src')));
        end
    end

    methods (Test)
        function cargaArchivosValidos(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function columnasFaltantes(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function valoresNegativos(tc)
            tc.assumeFail("Pendiente de implementar");
        end

        function archivoMalFormado(tc)
            tc.assumeFail("Pendiente de implementar");
        end
    end
end
