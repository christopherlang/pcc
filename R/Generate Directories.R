
#' Create R project directory structure
#'
#' @description
#' Creates a directory structure for data analysis projects
#'
#' @param loc
#' Location to create the structure in. If \code{NULL}, automatically assumes
#' current working directory
#'
#' @export
generate_directory <- function(loc=NULL) {
  if (is.null(loc)) {
    directory <- getwd()
  } else {
    directory <- loc
  }

  cat("Creating project structure in:\n")
  cat(directory, "\n\n")
  # Create config directory ====
  dir_name <- paste(directory, "config", sep = "/")
  dir.create(dir_name)
  cat("/config directory created\n")

  # Create data directory ====
  dir_name <- paste(directory, "data", sep = "/")
  dir.create(dir_name)
  cat("/data directory created\n")

  # Create sub-data directories
  dir_name <- paste(directory, "data", "original", sep = "/")
  dir.create(dir_name)
  cat("  /data/original directory created\n")
  dir_name <- paste(directory, "data", "output", sep = "/")
  dir.create(dir_name)
  cat("  /data/output directory created\n")
  dir_name <- paste(directory, "data", "processed", sep = "/")
  dir.create(dir_name)
  cat("  /data/processed directory created\n")
  dir_name <- paste(directory, "data", "cache", sep = "/")
  dir.create(dir_name)
  cat("  /data/cache directory created\n")

  # Create diagnostics directory ====
  dir_name <- paste(directory, "diagnostics", sep = "/")
  dir.create(dir_name)
  cat("/diagnostics directory created\n")

  # Create docs directory ====
  dir_name <- paste(directory, "docs", sep = "/")
  dir.create(dir_name)
  cat("/docs directory created\n")

  # Create figures directory ====
  dir_name <- paste(directory, "figures", sep = "/")
  dir.create(dir_name)
  cat("/figures directory created\n")

  # Create lib directory ====
  dir_name <- paste(directory, "lib", sep = "/")
  dir.create(dir_name)
  cat("/lib directory created\n")

  # Create logs directory ====
  dir_name <- paste(directory, "log", sep = "/")
  dir.create(dir_name)
  cat("/log directory created\n")

  # Create profiling directory ====
  dir_name <- paste(directory, "profiling", sep = "/")
  dir.create(dir_name)
  cat("/profiling directory created\n")

  # Create reports directory ====
  dir_name <- paste(directory, "report", sep = "/")
  dir.create(dir_name)
  cat("/report directory created\n")

  # Create src directory ====
  dir_name <- paste(directory, "src", sep = "/")
  dir.create(dir_name)
  cat("/src directory created\n")

  # Create tests directory ====
  dir_name <- paste(directory, "tests", sep = "/")
  dir.create(dir_name)
  cat("/tests directory created\n")

  # Create TODO text file ====
  dir_name <- paste(directory, "TODO.txt", sep = "/")
  writeLines(c("# List of TODO items for the project"), dir_name)
  cat("/TODO.txt file created\n")

  # Create README markdown file ====
  dir_name <- paste(directory, "README.md", sep = "/")
  writeLines(c(""), dir_name)
  cat("/README.md file created\n")
}