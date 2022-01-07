#!/bin/sh

set -ex

wasm-pack build --target web

wasm2js pkg/wasm2js_bg.wasm -o pkg/wasm2js_bg.js

sed -i 's/wasm2js_bg.wasm/wasm2js_bg.js/' pkg/wasm2js.js

http
