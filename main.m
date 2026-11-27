% MAIN  Punto de entrada del Optimizador Logístico de Red.
%   Ejecutar desde la carpeta raíz del repositorio:  >> main
raiz = fileparts(mfilename('fullpath'));
addpath(fullfile(raiz, 'src'));
ui.App(raiz);
