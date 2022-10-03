# install packages needed for CVPIA project

# example: fall run DSM
library('remotes')
remotes::install_github("CVPIA-OSC/fallRunDSM")
remotes::install_github("CVPIA-OSC/DSMscenario")
library('fallRunDSM')
library('DSMscenario')
library('dplyr')

# seed the model
fall_run_seeds <- fall_run_model(mode = "seed")

# run the 20 year simulation
results <- fall_run_model(scenario = DSMscenario::scenarios$ONE,
                          mode = "simulate",
                          seeds = fall_run_seeds)
str(results)
