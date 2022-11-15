FROM rocker/shiny

WORKDIR /home/app 

COPY app.R .

ENV PORT 8080
EXPOSE 8080

CMD R -e "shiny::runApp('app.R', host = '0.0.0.0', port = 8080)"