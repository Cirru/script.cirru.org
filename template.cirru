
var env :dev

if (is process.env.env :release)
  do
    = env :release

var
  stir $ require :stir-template
  fs $ require :fs

  ({}~ html head title meta link script body div style) stir

  logoUrl :http://logo.cirru.org/cirru-32x32.png
  mainFonts $ cond (is env :dev)
    , :http://localhost:8100/main-fonts.css
    , :http://cdn.tiye.me/favored-fonts/main-fonts.css
  cdnUrl $ cond (is process.env.local :true) : :http://cdn.tiye.me/script.cirru.org/

console.log ":Running mode" env

var assets
case env
  :dev
    = assets $ {}
      :main $ + :http://localhost :: 8080 :/main.js
      :style null
  :release
    var assetsJson $ require :./dist/assets

    console.log ":Using CDN url:" (JSON.stringify cdnUrl)

    = assets $ {}
      :main $ + cdnUrl assetsJson.main.js
      :style null

console.log ":Assets" assets

var html
  stir.render stir.doctype
    html null
      head null
        title null :CirruScript
        meta $ {} :charset :utf-8
        link $ {} :rel :icon :href logoUrl
        link $ {} :rel :stylesheet :href mainFonts
        cond (? assets.style)
          link $ {} :rel :stylesheet :href assets.style
        script $ {} :src assets.main :defer true
        style null ":body * {box-sizing: border-box;}"
        cond (is env :release)
          fs.readFileSync :assets/ga.html :utf8
      body ({} :style ":margin: 0;")
        div ({} :id :app)

fs.writeFileSync (cond (is process.env.env :release) :dist/index.html :index.html) html

console.log ":Write index.html"
