@echo off
if not exist build_web mkdir build_web

robocopy .\wasm_stuff .\build_web /s > nul

if not exist assets mkdir assets
robocopy .\assets .\build_web\assets /s > nul

set game_path=examples\Arkanoid\src

call odin build src\platform_wasm -out:build_web\index.wasm -target:js_wasm32 -extra-linker-flags:"--export-dynamic"
