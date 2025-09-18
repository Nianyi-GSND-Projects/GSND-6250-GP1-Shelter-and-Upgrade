# Shelter and Upgrade

## External asset usage

See [CREDITS.md](./CREDITS.md).

## Dev notes

- How to turn off depth fog (say, for scene editing purposes):

	Navigate to `Assets/Rendering/Fallback URP Renderer`, find the bottom-most renderer feature, which should has a title of `Depth Fog (Full Screen Pass Renderer Feature)`, turn it off, and the fog will be gone.

	Don't forget to turn it back on before building/publishing!

- How to change the terrain materials to the gray box material:

	Open the "Terrain Toolbox" window (`Window/Terrain/Terrain Toolbox`), switch to the "Terrain Settings" panel, under the "Basic Settings", tick the checkbox before the title and find the "Material" slot in it, select the "Gray Box - Default" material, and then click the "Apply to All Terrain(s) in Scene" button at the bottom.

	For some unknown reasons, the terrain materials will automatically switch back to the normal material indefinitely.