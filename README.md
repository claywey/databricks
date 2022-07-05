# databricks
Repository of helpful utilities and items for Databricks development


## docker

### Rbase
the rbase container sets up an R enviroment based on the 10.4LTS runtime. While it contains pre-installed libs specified [here](databricks\docker\rbase\requirements.txt), you can change the pre-compiled packages and then rebuild the container. 

- TODO: See if there are pre-compiled versions for the linux OS

### R plus Python

the r plus python container is configured with conda and has the 10.4LTS runtime. The initial intent of this container is to use R with MLFlow (which requires conda and python on databricks).

- TODO: Identify which ENV varibles need to be set for MLFlow on databricks. The experiments, aritifacts, are not working as expected. They do not show in the Databricks UI and the aritficants will not log. 