if (!requireNamespace("BiocManager", quietly =TRUE))
    install.packages("BiocManager")
if (!requireNamespace("pathview", quietly =TRUE))
    BiocManager::install("pathview")
if (!requireNamespace("org.Hs.eg.db", quietly =TRUE))
    BiocManager::install("org.Hs.eg.db")
if (!requireNamespace("biomaRt", quietly =TRUE))
    BiocManager::install("biomaRt")



MergeDfsbyKEGGid <- function(dfDEG, dfvar){
    newrownames <- union(rownames(dfDEG) , rownames(dfvar) )
    MergedDf <- data.frame( theunion=newrownames  , var=rep(0, length(newrownames) ) )
    rownames(MergedDf) <- MergedDf$theunion
    MergedDf$log2FoldChange <- rep(NA, dim(MergedDf)[1] )
    MergedDf$log2FoldChange[which(rownames(MergedDf) %in% rownames(dfDEG) )] <- dfDEG[ ,  "log2FoldChange"]
    MergedDf$var[which(rownames(MergedDf) %in% rownames(dfvar) )] <- dfvar[ ,  "var"]
    MergedDf <- MergedDf[,-1]
    MergedDf <- MergedDf[, c(2,1)]
    return(MergedDf)
}
