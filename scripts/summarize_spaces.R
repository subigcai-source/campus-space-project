args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 1) stop("Usage: Rscript scripts/summarize_spaces.R <csv-file>")

x <- read.csv(args[1], stringsAsFactors = FALSE)
required <- c("space_id", "building", "space_type", "seats", "occupied", "noise_level")
if (!all(required %in% names(x))) stop("Input is missing required columns")

x$available <- x$seats - x$occupied
cat("Rows:", nrow(x), "\n")
cat("Total seats:", sum(x$seats), "\n")
cat("Occupied seats:", sum(x$occupied), "\n")
cat("Available seats:", sum(x$available), "\n")
cat("Occupancy rate:", sprintf("%.1f%%", 100 * sum(x$occupied) / sum(x$seats)), "\n")
cat("Busiest observed space:", x$space_id[which.max(x$occupied / x$seats)], "\n")
