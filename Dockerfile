FROM rocker/rstudio

RUN \
sudo apt-get update && \
sudo apt-get upgrade -y && \
sudo apt-get install -y openssh-client vim

RUN Rscript -e ' \
install.packages(c("devtools", "assertthat", "styler", "tidyverse", "shiny", "plotly")) \
'
