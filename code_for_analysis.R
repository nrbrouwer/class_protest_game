library(tidyverse)


setwd("C:/Users/Nickb/Downloads")

file <- paste0("all_apps_wide-2025-04-25(2)", ".csv")
file <- read.csv(file)

file <- file %>%
  # Keep only ID columns, name column, and relevant protest_game_main variables
  select(
    matches("^participant\\.code$|^protest_game_main\\.1\\.player\\.name$"),
    matches("^protest_game_main\\.\\d+\\.(player\\.payoff|player\\.protest_choice)$")
  ) %>%
  # Pivot longer to gather the per-round variables
  pivot_longer(
    cols = matches("^protest_game_main\\.\\d+\\.(player\\.payoff|player\\.protest_choice)$"),
    names_to = c("round", "variable"),
    names_pattern = "protest_game_main\\.(\\d+)\\.(player\\..+)",
    values_to = "value"
  ) %>%
  # Pivot wider to separate columns for payoff and protest_choice
  pivot_wider(
    names_from = variable,
    values_from = value
  ) %>%
  # Make round a numeric variable (optional)
  mutate(round = as.integer(round)) %>%
  group_by(`protest_game_main.1.player.name`) %>%
  arrange(round) %>%
  mutate(cumulative_score = cumsum(player.payoff))


file_results <- file %>%
  group_by(protest_game_main.1.player.name) %>%
  summarise(final_score = sum(player.payoff),
            total_attendance = sum(player.protest_choice),
            attendance_percentage = total_attendance/12) 

ggplot(file, aes(x = round, y = cumulative_score, color = `protest_game_main.1.player.name`)) +
  geom_line() +
  geom_point() +
  labs(
    title = "Cumulative Payoff Over Rounds by Player",
    x = "Round",
    y = "Cumulative Score",
    color = "Player"
  ) +
  theme_minimal()
