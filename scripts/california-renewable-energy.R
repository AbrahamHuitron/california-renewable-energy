# list of packages used for data import and analysis
require(data.table) # used for data import, faster than readr and read.csv
require(dlookr) # used for statistical descriptions and analysis
require(dplyr) # used for data manipulation
require(tidyverse) # used for data 'tidying'
require(ggplot2) # used for data visualization

# setting working directory of project
setwd("~/Projects/R/california-renewable-energy")

# importing dataset
dataset <- fread(".\\data\\all_breakdown.csv")

# quick dataset preview
head(dataset)

# checking size & dimensions of the dataset
dim(dataset)

# display the structure of the dataset
str(dataset)

# displaying the statistics of all numerical values
describe(dataset)

# summarizing the dataset
summary(dataset)

# histogram for BIOGAS
ggplot(dataset, aes(BIOGAS)) +
  geom_histogram(fill = "#006A53", color = "black") +
  labs(
    title = "Distribution of Generated Hourly Energy (Biogas)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)",
    y = "Frequency"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  ) +
  geom_vline(aes(xintercept = mean(BIOGAS)), color = "red", size = 1, linetype = "dashed")

# boxplot for BIOGAS
ggplot(dataset, aes(BIOGAS)) +
  geom_boxplot(fill = "#006A53", color = "black", outlier.colour = "red") +
  labs(
    title = "Distribution of Generated Hourly Energy (Biogas)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic"),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank()
  )

# line graph for BIOGAS
ggplot(dataset, aes(TIMESTAMP, BIOGAS)) +
  geom_smooth(fill = "#006A53", color = "black") +
  labs(
    title = "Energy Generated Annually (Biogas)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Year",
    y = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  )

# histogram for BIOSMASS
ggplot(dataset, aes(BIOMASS)) +
  geom_histogram(fill = "#006A53", color = "black") +
  labs(
    title = "Distribution of Generated Hourly Energy (Biomass)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)",
    y = "Frequency"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic"),
  ) +
  geom_vline(aes(xintercept = mean(BIOMASS)), color = "red", size = 1, linetype = "dashed")

# boxplot for BIOMASS
ggplot(dataset, aes(BIOMASS)) +
  geom_boxplot(fill = "#006A53", color = "black", outlier.colour = "red") +
  labs(
    title = "Distribution of Generated Hourly Energy (Biomass)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic"),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank()
  )

# line graph for BIOMASS
ggplot(dataset, aes(TIMESTAMP, BIOMASS)) +
  geom_smooth(fill = "#006A53", color = "black") +
  labs(
    title = "Energy Generated Annually (Biomass)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Year",
    y = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  )

# histogram for GEOTHERMAL
ggplot(dataset, aes(GEOTHERMAL)) +
  geom_histogram(fill = "#006A53", color = "black") +
  labs(
    title = "Distribution of Generated Hourly Energy (Geothermal)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)",
    y = "Frequency"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  ) +
  geom_vline(aes(xintercept = mean(GEOTHERMAL)), color = "red", size = 1, linetype = "dashed")

# boxplot for GEOTHERMAL
ggplot(dataset, aes(GEOTHERMAL)) +
  geom_boxplot(fill = "#006A53", color = "black", outlier.colour = "red") +
  labs(
    title = "Distribution of Generated Hourly Energy (Geothermal)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic"),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank()
  )

# line graph for GEOTHERMAL
ggplot(dataset, aes(TIMESTAMP, GEOTHERMAL)) +
  geom_smooth(fill = "#006A53", color = "black") +
  labs(
    title = "Energy Generated Annually (Geothermal)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Year",
    y = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  )

# histogram for SMALL HYDRO
ggplot(data = na.omit(dataset), aes(x = na.omit(dataset$`SMALL HYDRO`))) +
  geom_histogram(fill = "#006A53", color = "black") +
  labs(
    title = "Distribution of Generated Hourly Energy (Small Hydro)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)",
    y = "Frequency"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  ) +
  geom_vline(aes(xintercept = mean(dataset$`SMALL HYDRO`)), color = "red", size = 1, linetype = "dashed")

# boxplot for SMALL HYDRO
ggplot(data = na.omit(dataset), aes(x = na.omit(dataset$`SMALL HYDRO`))) +
  geom_boxplot(fill = "#006A53", color = "black", outlier.colour = "red") +
  labs(
    title = "Distribution of Generated Hourly Energy (Small Hydro)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic"),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
  )

# line graph for SMALL HYDRO
ggplot(dataset, aes(TIMESTAMP, y = na.omit(dataset$`SMALL HYDRO`))) +
  geom_smooth(fill = "#006A53", color = "black") +
  labs(
    title = "Energy Generated Annually (Small Hydro)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Year",
    y = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  )

# histogram for SOLAR
ggplot(dataset, aes(SOLAR)) +
  geom_histogram(fill = "#006A53", color = "black") +
  labs(
    title = "Distribution of Generated Hourly Energy (Solar)",
    subtitle = "California, 2010-2013",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)",
    y = "Frequency"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  ) +
  geom_vline(aes(xintercept = mean(SOLAR)), color = "red", size = 1, linetype = "dashed")

# boxplot for SOLAR
ggplot(dataset, aes(SOLAR)) +
  geom_boxplot(fill = "#006A53", color = "black", outlier.colour = "red") +
  labs(
    title = "Distribution of Generated Hourly Energy (Solar)",
    subtitle = "California, 2010-2013",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic"),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank()
  )

# line graph for SOLAR
ggplot(dataset, aes(TIMESTAMP, SOLAR)) +
  geom_smooth(fill = "#006A53", color = "black") +
  labs(
    title = "Energy Generated Annually (Solar)",
    subtitle = "California, 2010-2013",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Year",
    y = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  )

# histogram for SOLAR PV
ggplot(data = na.omit(dataset), aes(x = na.omit(dataset$`SOLAR PV`))) +
  geom_histogram(fill = "#006A53", color = "black") +
  labs(
    title = "Distribution of Generated Hourly Energy (Solar Photovoltaic)",
    subtitle = "California, 2013-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)",
    y = "Frequency"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  ) +
  geom_vline(aes(xintercept = mean(dataset$`SOLAR PV`)), color = "red", size = 1, linetype = "dashed")

# boxplot for SOLAR PV
ggplot(data = na.omit(dataset), aes(x = na.omit(dataset$`SOLAR PV`))) +
  geom_boxplot(fill = "#006A53", color = "black", outlier.colour = "red") +
  labs(
    title = "Distribution of Generated Hourly Energy (Solar Photovoltaic)",
    subtitle = "California, 2013-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic"),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
  )

# line graph for SOLAR PV
ggplot(dataset, aes(TIMESTAMP, dataset$`SOLAR PV`)) +
  geom_smooth(fill = "#006A53", color = "black") +
  labs(
    title = "Distribution of Generated Hourly Energy (Solar Photovoltaic)",
    subtitle = "California, 2013-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Year",
    y = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  )

# histogram for SOLAR THERMAL
ggplot(data = na.omit(dataset), aes(x = na.omit(dataset$`SOLAR THERMAL`))) +
  geom_histogram(fill = "#006A53", color = "black") +
  labs(
    title = "Distribution of Generated Hourly Energy (Solar Thermal)",
    subtitle = "California, 2013-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)",
    y = "Frequency"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  ) +
  geom_vline(aes(xintercept = mean(dataset$`SOLAR THERMAL`)), color = "red", size = 1, linetype = "dashed")

# boxplot for SOLAR THERMAL
ggplot(data = na.omit(dataset), aes(x = na.omit(dataset$`SOLAR THERMAL`))) +
  geom_boxplot(fill = "#006A53", color = "black", outlier.colour = "red") +
  labs(
    title = "Distribution of Generated Hourly Energy (Solar Thermal)",
    subtitle = "California, 2013-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic"),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
  )

# line graph for SOLAR THERMAL
ggplot(dataset, aes(TIMESTAMP, dataset$`SOLAR THERMAL`)) +
  geom_smooth(fill = "#006A53", color = "black") +
  labs(
    title = "Distribution of Generated Hourly Energy (Solar Thermal)",
    subtitle = "California, 2013-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Year",
    y = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  )

# histogram for WIND TOTAL
ggplot(data = na.omit(dataset), aes(x = na.omit(dataset$`WIND TOTAL`))) +
  geom_histogram(fill = "#006A53", color = "black") +
  labs(
    title = "Distribution of Generated Hourly Energy (Wind)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)",
    y = "Frequency"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  ) +
  geom_vline(aes(xintercept = mean(dataset$`WIND TOTAL`)), color = "red", size = 1, linetype = "dashed")

# boxplot for WIND TOTAL
ggplot(data = na.omit(dataset), aes(x = na.omit(dataset$`WIND TOTAL`))) +
  geom_boxplot(fill = "#006A53", color = "black", outlier.colour = "red") +
  labs(
    title = "Distribution of Generated Hourly Energy (Wind)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic"),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
  )

# line graph for WIND TOTAL
ggplot(dataset, aes(TIMESTAMP, dataset$`WIND TOTAL`)) +
  geom_smooth(fill = "#006A53", color = "black") +
  labs(
    title = "Distribution of Generated Hourly Energy (Wind)",
    subtitle = "California, 2010-2018",
    caption = "Source: CAISO (California Independent System Operator)",
    x = "Year",
    y = "Megawatts (MW)"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 10, face = "bold"),
    plot.caption = element_text(face = "italic")
  )
