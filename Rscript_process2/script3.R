library(plotly)
library(htmltools)

m <- matrix(rnorm(9), nrow = 3, ncol = 3)
fig <- plot_ly(
    x = c("a", "b", "c"), y = c("d", "e", "f"),
    z = m, type = "heatmap"
)

htmltools::save_html(html= fig, file ="Rplot/fig4_mqc.html")
