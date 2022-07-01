packages = read.delim("requirements.txt")

install.packages(packages[[1]], repos = "http://cran.us.r-project.org")


# Moved from docker file

# hwriterPlus is used by Databricks to display output in notebook cells
# hwriterPlus is removed for newer version of R, so we hardcode the dependency to archived version
# Rserve allows Spark to communicate with a local R process to run R code
options(repos = list(MRAN = 'https://mran.microsoft.com/snapshot/2022-04-08', CRAN = 'https://cran.microsoft.com/'))
install.packages(c('hwriter', 'TeachingDemos', 'htmltools'))
install.packages('https://cran.r-project.org/src/contrib/Archive/hwriterPlus/hwriterPlus_1.0-3.tar.gz', repos=NULL, type='source')
install.packages('Rserve')