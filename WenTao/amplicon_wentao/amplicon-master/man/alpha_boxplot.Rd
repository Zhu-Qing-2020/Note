% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alpha_boxplot.R
\name{alpha_boxplot}
\alias{alpha_boxplot}
\title{Plotting alpha diversity boxplot for each group with anova statistics}
\usage{
alpha_boxplot(alpha_div, metadata, index = "richness", groupID = "genotype")
}
\arguments{
\item{alpha_div}{alpha diversity matrix, typical output of usearch -alpha_div,
rowname is sampleID, colname is index of alpha diversity;}

\item{metadata}{matrix or dataframe, including sampleID and groupID;}

\item{index}{index(type) of alpha diversity;}

\item{groupID}{column name for groupID.}
}
\value{
ggplot2 object.
}
\description{
Input alpha index and metadata, and manual set alpha index and metadata column names.
agricolae::LSD.test calculate p-value, and dplyr summary each group max for p-value groups position.
ggplot2 show boxplot, jitter and stat groups.
}
\details{
By default, returns richness diversity index
The available diversity indices include the following:
\itemize{
\item{most used indices: chao1, richness, shannon_e}
\item{other used indices: berger_parker, buzas_gibson, dominance, equitability, jost, jost1, reads, robbins, simpson, shannon_2, shannon_10}
}
}
\examples{
# Set four parameters: alpha_div, metadata, index and groupID
alpha_boxplot(alpha_div, metadata, "richness", "genotype")
# Set two parameters: alpha_div, metadata, and index and groupID as default richness and genotype
alpha_boxplot(alpha_div, metadata)
# Set two parameters: alpha_div, metadata, and index and groupID as using chao1 and site
alpha_boxplot(alpha_div, metadata, "chao1", "site")
}
\references{
Zhang, J., Zhang, N., Liu, Y.X., Zhang, X., Hu, B., Qin, Y., Xu, H., Wang, H., Guo, X., Qian, J., et al. (2018).
Root microbiota shift in rice correlates with resident time in the field and developmental stage.
Sci China Life Sci 61, DOI: \url{https://doi.org/10.1007/s11427-018-9284-4}
}
\seealso{
alpha_rare
}
\author{
Contact: Yong-Xin Liu \email{metagenome@126.com}
}
