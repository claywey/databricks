FROM databricksruntime/rbase:10.4-LTS

# Needed for certain R packages to install
RUN apt-get update \
  && apt-get install --yes \
  cmake \
  libfontconfig1-dev \
  curl \
  libcurl4-openssl-dev  \
  libxml2-dev

# Files for packages
COPY requirements.txt requirements.txt
COPY install_packages.R install_packages.R

RUN Rscript install_packages.R