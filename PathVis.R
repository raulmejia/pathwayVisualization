if (!requireNamespace("BiocManager", quietly =TRUE))
    install.packages("BiocManager")
if (!requireNamespace("pathview", quietly =TRUE))
    BiocManager::install("pathview")
if (!requireNamespace("org.Hs.eg.db", quietly =TRUE))
    BiocManager::install("org.Hs.eg.db")
if (!requireNamespace("biomaRt", quietly =TRUE))
    BiocManager::install("biomaRt")



