library(ggplot2)

data <- read.table("enriched_input.txt",sep="\t",header=T)

png("Enrichment.png")
ggplot(data = data, aes(x = Value, y = Type, color = `Pvalue`, size = Count)) + geom_point() + scale_color_gradient(low = "red", high = "blue") + theme_bw() + ylab("Term") + xlab("Enrichment ratio") + ggtitle("Title") + theme(axis.text.y = element_text(size=18, face="bold", colour = "black")) + theme(axis.text.x = element_text(face="bold",size=18, colour = "black")) + theme(axis.title.y = element_text(size=18, face="bold", colour = "black")) + theme(axis.title.x = element_text(face="bold",size=18, colour = "black")) +   theme(legend.key.size = unit(1, 'cm'), legend.key.height = unit(1, 'cm'),legend.key.width = unit(1, 'cm'), legend.title = element_text(size=25), legend.text = element_text(size=20)) + theme(plot.title = element_text(size = 25, face = "bold",hjust = 0.5) )
dev.off()
