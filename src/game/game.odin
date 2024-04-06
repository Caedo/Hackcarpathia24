package game

import dm "../dmcore"
import "core:math"
import "core:math/rand"
import "core:math/linalg/glsl"
import "core:fmt"
import "core:slice"

import "../ldtk"

v2 :: dm.v2
iv2 :: dm.iv2


GameState :: struct {
    grid: []Tile,
    gridX, gridY: int,

}
gameState: ^GameState


@export
PreGameLoad : dm.PreGameLoad : proc(assets: ^dm.Assets) {
    dm.RegisterAsset("level.ldtk", dm.RawFileAssetDescriptor{})
    dm.RegisterAsset("tiles.png", dm.TextureAssetDescriptor{})
}

@(export)
GameLoad : dm.GameLoad : proc(platform: ^dm.Platform) {
}

@(export)
GameUpdate : dm.GameUpdate : proc(state: rawptr) {
}

@(export)
GameUpdateDebug : dm.GameUpdateDebug : proc(state: rawptr, debug: bool) {
}

@(export)
GameRender : dm.GameRender : proc(state: rawptr) {
}

/////////////////
