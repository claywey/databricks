packages = read.delim("requirements.txt")

install.packages(packages[[1]], repos = "http://cran.us.r-project.org")