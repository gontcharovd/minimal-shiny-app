FROM rocker/shiny

WORKDIR /home/app 

COPY app.R .

EXPOSE 80

CMD R -e "shiny::runApp('app.R', host = '0.0.0.0', port = 80)"