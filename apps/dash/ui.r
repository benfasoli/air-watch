# Ben Fasoli
source('../_libraries.r')
source('../_style_setup.r')

body <- dashboardBody(
  includeStyle,
  fluidRow(
    column(12,
           fluidRow(
             column(3, valueBoxOutput('value_PM25_ugm3', width = NULL)),
             column(3, valueBoxOutput('value_O3_ppb', width = NULL))
             # column(3, valueBoxOutput('z', width = NULL)),
             # column(3, valueBoxOutput('z', width = NULL))
           ),
           box(title = 'UATAQ Home', 
               width = NULL, status = 'danger',
               div(class = 'tall',
                   plotlyOutput('ts', height = '100%')
               )
           )
    )
  )
)

dashboardPage(title = 'Dashboard Home', skin = 'black',
              header, sidebar, body)
