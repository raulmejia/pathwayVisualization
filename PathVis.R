if (!requireNamespace("BiocManager", quietly =TRUE))
    install.packages("BiocManager")
BiocManager::install("pathview")
library("pathview")
BiocManager::install("org.Hs.eg.db")


data(gse16873.d)
str(gse16873.d)
head(gse16873.d); dim(gse16873.d)
data(demo.paths)
str(demo.paths)
demo.paths[[1]]
data(paths.hsa)
str(paths.hsa)
names(paths.hsa)
paths.hsa[grep("olipid",paths.hsa)]
paths.hsa[grep("cerol",paths.hsa)]
paths.hsa[grep("sph",paths.hsa)]

paths.hsa[grep("lipid",paths.hsa)]
paths.hsa[grep("sosome",paths.hsa)]

paths.hsa[1]

i <- 1
pv.out <- pathview(gene.data = gse16873.d[, 1], pathway.id = demo.paths$sel.paths[i], species = "hsa", out.suffix = "gse16873", kegg.native = T)

pv.out <- pathview(gene.data = gse16873.d[, 1], pathway.id = "00603", species = "hsa", out.suffix = "gse16873_hsa00603", kegg.native = T)


pv.out <- pathview(gene.data = gse16873.d[, 1:2], pathway.id = "00603", species = "hsa", out.suffix = "gse16873_2samples_hsa00603", kegg.native = T, keys.align="y", match.data=F, multi.state=F, same.layer=T)

pv.out <- pathview(gene.data = gse16873.d[, 1:2], pathway.id = "00603", species = "hsa", out.suffix = "gse16873_2_same_graph_hsa00603", kegg.native = T, keys.align="y", match.data=T, multi.state=T, same.layer=T)

head(gse16873.d)
str(gse16873.d)



str(pv.out)

head(pv.out$plot.data.gene)



str(gse16873.d[, 1])
