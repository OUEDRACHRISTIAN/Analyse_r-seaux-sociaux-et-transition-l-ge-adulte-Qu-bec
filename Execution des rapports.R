# Installer et charger renv si besoin
#install.packages("renv", repos = "https://cloud.r-project.org")
#renv::restore()

# Installer les packages manuellement si besoin
#install.packages("here", repos = "https://cloud.r-project.org")
#install.packages("rmarkdown", repos = "https://cloud.r-project.org")
#install.packages("yaml", repos = "https://cloud.r-project.org")
#install.packages("ggplot2", repos = "https://cloud.r-project.org")

#install.packages(c("rmarkdown", "ggplot2", "dplyr", "yaml", "here"), repos = "https://cloud.r-project.org")
#install.packages(c("ggplot2", "rmarkdown", "grid", "gridExtra"), repos = "https://cloud.r-project.org")

# Charger les bibliothèques
library(here)
library(rmarkdown)
library(yaml)
library(ggplot2)
library(grid)
library(gridExtra)


# Rendre les rapports au format HTML
rmarkdown::render(here("scripts", "Rapport.Rmd"), output_dir = here("rapport"))
rmarkdown::render(here("main.Rmd"), output_dir = here("rapport"))

# Rendre le rapport au format Word
rmarkdown::render(here("scripts", "Rapport.Rmd"), output_format = "word_document", output_dir = here("rapport"))
rmarkdown::render(here("main.Rmd"), output_format = "word_document", output_dir = here("rapport"))

cat("Test terminé avec succès ✅\n")
