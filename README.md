# JasmyLab-JANCTION Homebrew tap

```sh
brew install jasmylab-janction/tap/janction-render
```

`janction-render` connects an MCP client (Claude Desktop, Cursor, Windsurf, Claude Code and others) to [JANCTION Render](https://render.janction.jp), which renders Blender scenes and 3D models (GLB, FBX, USD, OBJ, STL) on cloud GPUs: previews in seconds, then product shots, turntables, animations or stills as PNG or MP4. No local GPU or Blender.

```json
{ "mcpServers": { "janction-render": { "command": "janction-render" } } }
```

The first call opens a consent page that creates a key with free GPU time. Pass `--key jr_...` to use a key you already have, or `--local` to run the Python stdio server through uv (sends local files). Source and docs: https://github.com/JasmyLab-JANCTION/janction-render (MIT). Operated by JasmyLab Inc.
