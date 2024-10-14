##install.packages("tidyverse")
##install.packages("janitor")
##install.packages("ggridges")
library(tidyverse)
library(janitor)
library(ggridges)

## Se cargan los datos y limpian los nombres
## Aqui debes poner tus datos
data <- read_csv("polarizacion_redes experiment_dinamica-table.csv", skip = 6) |>
    janitor::clean_names() |>
    rename(di_str = map_t_di_of_t_sort_turtles,
           si_str = map_t_si_of_t_sort_turtles)

## Funciones para procesar las listas de listas con los atributos dinámicos
procesar_di <- function(cadena_di){
    cadena_di |>
        str_replace_all("[\\[\\]]","") |> 
        str_split_1(" ") |> 
        map_int(\(x) as.numeric(x))|>
        (\(x) matrix(x, ncol = num_atributos, byrow = TRUE))() |>
        as_tibble() |>
        mutate(num_agente = seq(1:num_agentes))
}
procesar_si <- function(cadena_si) {
    cadena_si |>
        str_replace_all("[\\[\\]]","") |>
        str_split_1(" ") |>
        map_int(\(x) as.numeric(x)) |>
        as_tibble_col(column_name = "si_val") |>
        mutate(num_agente = seq(1:num_agentes))
}
procesar_di_si <- function(di,si){
    as_tibble(merge(procesar_di(di), procesar_si(si)))
}

## Se limpian y ordenan los datos
num_agentes <- 225  # count turtles
num_atributos <- 10 # valor de m
data <-
    data |>
    mutate(di_si = map2(di_str, si_str, procesar_di_si)) |>
    unnest(di_si) |>
    select(!c(di_str, si_str))

## Se hace el análisis de componentes principales
prim_comp <- tibble(
    step = numeric(),
    gamma = numeric(),
    si_val = numeric(),
    primer_componente = numeric())
pasos <- unique(data$step)
gammas <- unique(data$gamma)
for(g in gammas){
    for(p in pasos){
        matriz_dist <- data |>
            filter(step == p, gamma == g ) |>
            arrange(num_agente) |>
            select(starts_with("V")) |>
            dist(method="euclidean")
        pca <- matriz_dist |>
            prcomp(scale. = TRUE, center = TRUE )
        s <- data |>
            filter(step == p, gamma == g) |>
            arrange(num_agente) |>
            select(si_val) 
        prim_comp_g_p <- data.frame(
            step = p,
            gamma = g,
            si_val = s,
            primer_componente = pca$x[,1])
        prim_comp <- rbind(prim_comp, prim_comp_g_p)
    }
}

## Se hace la gráfica
ggplot(prim_comp, aes(x = primer_componente,
                  y = as.factor(step),
                  fill = as.factor(si_val))) +
    geom_density_ridges(alpha = 0.5,
                         panel_scaling = FALSE) +
    facet_grid(. ~ gamma,
               labeller = label_bquote(col = gamma ==  .(gamma))) +
    labs(x = "", y = "iteración", fill = "Atributo \nestático") +
    scale_y_discrete(limits = rev) + 
    theme(axis.ticks.x = element_blank(),
          axis.text.x = element_blank())
