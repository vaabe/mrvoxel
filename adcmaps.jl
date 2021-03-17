using DelimitedFiles
using Plots
#using GR
Plots.gr()

MDmap = readdlm("./fitdata/MD.csv", ',')
FAmap = readdlm("./fitdata/FA.csv", ',')

#setcolormap(8)

heatmap(MDmap, 
		aspect_ratio = 1,
		title = "Mean Diffusivity (MD)") 
savefig("./pngs/MDmap.png")
#
#heatmap(FAmap)
#savefig("./pngs/FAmap.png")
#
