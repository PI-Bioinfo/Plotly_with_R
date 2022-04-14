
library(plotly)
library(htmltools)

fig <- plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length,
               marker = list(size = 10,
                             color = 'rgba(255, 182, 193, .9)',
                             line = list(color = 'rgba(152, 0, 0, .8)',
                                         width = 2)))
fig <- fig %>% layout(title = 'Styled Scatter',
         yaxis = list(zeroline = FALSE),
         xaxis = list(zeroline = FALSE))

trace_0 <- rnorm(100, mean = 5)
trace_1 <- rnorm(100, mean = 0)
trace_2 <- rnorm(100, mean = -5)
x <- c(1:100)

data <- data.frame(x, trace_0, trace_1, trace_2)

fig2 <- plot_ly(data, x = ~x, y = ~trace_0, name = 'trace 0', type = 'scatter', mode = 'lines')
fig2 <- fig2 %>% add_trace(y = ~trace_1, name = 'trace 1', mode = 'lines+markers')
fig2 <- fig2 %>% add_trace(y = ~trace_2, name = 'trace 2', mode = 'markers')


htmltools::save_html(html= fig, file ="Rplot/fig1_mqc.html")
htmltools::save_html(html= fig2, file ="Rplot/fig2_mqc.html")