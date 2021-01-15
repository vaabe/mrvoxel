using DelimitedFiles
using GR

MDmap = readdlm("./fitdata/MD.csv", ',')
FAmap = readdlm("./fitdata/FA.csv", ',')

setcolormap(8)

heatmap(MDmap)
savefig("./pngs/MDmap.png")

heatmap(FAmap)
savefig("./pngs/FAmap.png")

