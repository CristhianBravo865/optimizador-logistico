# Guía de trabajo

## Ramas

```
main      ← versiones etiquetadas (v0.1-perfil, v0.9-beta, v1.0)
 └── develop   ← integración: todo entra por Pull Request
      ├── feat/<tarea>    nuevas funcionalidades
      ├── fix/<tarea>     correcciones
      └── docs/<tarea>    documentos (perfil, QA, paper)
```

1. Partir siempre de `develop` actualizado:
   ```bash
   git checkout develop
   git pull
   git checkout -b feat/nombre-de-la-tarea
   ```
2. Trabajar con commits pequeños y subir la rama:
   ```bash
   git push -u origin feat/nombre-de-la-tarea
   ```
3. Abrir un **Pull Request hacia `develop`**. Se fusiona cuando las pruebas pasan en GitHub Actions
   y tiene una revisión aprobada. Después se borra la rama.
4. No se hace push directo a `main` ni a `develop`.

## Commits

Formato [Conventional Commits](https://www.conventionalcommits.org/es/), en español:

| Prefijo | Uso |
|---|---|
| `feat:` | nueva funcionalidad |
| `fix:` | corrección de un error |
| `test:` | pruebas |
| `docs:` | documentación |
| `refactor:` | cambio de código sin cambiar el comportamiento |
| `chore:` | configuración, estructura, CI |

Ejemplo: `feat: factorización de Cholesky y sustituciones`

## Reglas de código

- Los métodos numéricos se programan en `src/+numerics`. Ahí **no** se usan funciones de MATLAB que
  resuelvan el problema (`\`, `polyfit`, `integral`, `pcg`, `ode45`…); esas solo se usan en `tests/`
  para comparar resultados.
- Cada función empieza con su bloque de ayuda: qué hace, entradas, salidas y complejidad.
- Las entradas y salidas de cada función (ver la ayuda de cada archivo) son el contrato entre módulos:
  si hay que cambiarlas, se acuerda antes.
- La interfaz se escribe en archivos `.m` con `uifigure` (no App Designer), un archivo por pestaña.
- No se suben `.mat` ni salidas generadas (carpeta `salidas/`).

## Pruebas

```matlab
>> runtests('tests')
```

- Una clase `TestXxx.m` por módulo en `tests/`.
- Las pruebas todavía no implementadas aparecen como *Incomplete* y no hacen fallar el CI.
- GitHub Actions corre todas las pruebas en cada push y Pull Request a `main` o `develop`.

## Entregables y versiones

| Tag | Contenido |
|---|---|
| `v0.1-perfil` | Perfil del proyecto (requerimientos, marco teórico, arquitectura, cronograma) |
| `v0.9-beta` | Núcleo numérico y pipeline completos + reporte QA |
| `v1.0` | Interfaz gráfica completa, análisis de error, paper IEEE y presentación |
