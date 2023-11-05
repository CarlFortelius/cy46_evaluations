library(htmltools)


path_to_figs <- "/home/forteliu/cy46_evaluations/plots/"
header_string <- "All"


# Get a list of files in the directory
fig_files <- list.files(path_to_figs)

# Create links to the figures
fig_links <- lapply(fig_files, function(file) {
  link_text <- file
  a(href = file.path(path_to_figs, file), tags$br(link_text))
})

# Create the HTML content
html_content <- tagList(
  h1(header_string),
  tags$li(fig_links)
)

# Save the HTML content to a file
html_file <- "/home/forteliu/cy46_evaluations/Omnibus.html"
save_html(html_content, html_file)

# Print the path to the generated HTML file
cat("HTML file saved as:", html_file, "\n")

