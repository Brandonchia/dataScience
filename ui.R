library(shiny)
shinyUI(pageWithSidebar(
        # Application title
        headerPanel('Find Your Ideal Weight'),
        sidebarPanel(
                h3("Note: It's just for fun!"),
                numericInput('h','Height input (cm)',
                             100,min=30,max=300,step=0.1),
                numericInput('w','Weight input (kg)',5,min=0,max=300,step=0.01),
                
                radioButtons('sex','Gender',
                                   c('Male'='1',
                                     'Female'='2')),
                submitButton('Submit'),
                dateInput('date',"Date:"),
                textInput('plan','If you have a plan to workout or diet, please share with your peers.'),
                checkboxGroupInput('sport','Favorite Sports',
                                   c('Climbing' = '1',
                                     'Hiking' = '2',
                                     'Swimming' = '3',
                                     'Basketball' = '4'
                                   ))
                #radioButtons('music',choices = c('1','2'),'Want some music?')
                #h1('Siderbar.text'),
                #h1('H1 text'),
                #h2('H2 text'),
                #h3('H3 text'),
                #h4('H4 text')
        ),
        mainPanel(
                h3('Your ideal weight results'),
                #code('some code'),
                p('The algorithm is based on the reports published by World Health Organization'),
                p("It's extremely easy to use. You just need to follow my guides:"),
                p("Step 1: Input numbers for weight, height"),
                p("Step 2: Check your gender"),
                p("Step 3: Submit your answer"),
                p("Wish you have fun"),
                h4('You current height'),
                verbatimTextOutput('oh'),
                h4('You current weight'),
                verbatimTextOutput('ow'),
                h4('Data'),
                verbatimTextOutput('odate'),
                h4('Your ideal weight should be in this interval'),
                h5('Upper Limit'),
                verbatimTextOutput('prediction1'),
                h5('Lower Limit'),
                verbatimTextOutput('prediction2'),
                verbatimTextOutput('oresult')
        )
))