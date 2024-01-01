source("C:/Users/Jonathan/Documents/GitHubRepos/neuropsych_calculations/tests_and_norms.R")

# shiny app below this
shinyApp(
  ui = fluidPage(
    title = "Template Creation for Neuropsychology Patient Reports",

    sidebarLayout(
      sidebarPanel(
        textInput("patient_name", "Patient's Name"),
        textInput("dob", "Patient's Date of Birth"),
        textInput("city", "City patient resides in"),
        textInput("state", "State patient resides in"),
        textInput("interview_date", "Interview Date (e.g., MM/DD/YYYY)"),
        textInput("testing_date", "Testing Date (e.g., MM/DD/YYYY)"),
        textInput("examiner", "Examiner's Name"),
        selectInput("examiner2_tf", "Is there a second examiner", choices = c(TRUE, FALSE)),
        textInput("examiner2", "Second Examiner's Name"),
        selectInput("examiner3_tf", "Is there a third examiner", choices = c(TRUE, FALSE)),
        textInput("examiner3", "Third Examiner's Name"),
        selectInput("mr_ms", "Name prefix", choices = c("Mr.", "Ms", "Mrs.", "Dr.")),
        selectInput("male_female", "Male/Female/Non-binary", choices = c("male", "female", "non-binary")),
        selectInput("his_her_their", "His/Her/Their", choices = c("his", "her", "their")),
        selectInput("he_she_they", "He/She/They", choices = c("he", "she", "they")),
        textInput("patient_age", "Patient's Age"),
        selectInput("handed", "Right or left-handed", choices = c("right", "left")),
        selectInput("marital_status", "Patient's marital status", choices = c("single", "married", "widowed", "divorced", "separated")),
        textInput("race_ethnicity", "Patient's Race/Ethnicity"),
        selectInput("bilingual", "Is the patient bilingual?", choices = c(TRUE, FALSE)),
        textInput("years_of_ed", "Years of Education"),
        selectInput("referred", "Is the patient referred by a doctor?", choices = c(TRUE, FALSE)),
        textInput("referring_dr", "Referring Doctor's Name (e.g., Dr. Sam I Am)"),
        selectInput("past_diagnosis_tf", "The patient have a past diagnosis?", choices = c(TRUE, FALSE)),
        textInput("past_diagnosis", "What is/are the patient's past diagnosis/diagnoses?"),
        textInput("past_dr_diagnosing", "Past doctor to diagnose previous diagnosis/diagnoses (e.g., pediatrician)"),
        textInput("age_of_diagnosis", "At what age was the patient diagnosed (e.g., 8-years old)."),
        textInput("time_of_symptom_concern", "When were the symptoms becoming problematic (i.e., kindergarten)"),
        textInput("major_medical_issues", "List all the major medical issues (e.g., chronic pain, arthiritis, asthma)"),
        textInput("diagnosis_symptoms", "List all the symptoms related to being evaluated."),
        textInput("current_medications", "List medications currently taking. If none write 'not currently taking medication.'"),
        textInput("past_medications", "List medication(s) previously taken."),
        
        # test scores
        textInput("raw_topf", "TOPF score - Raw"),
        textInput("standard_topf", "TOPF score - Standard"),
        textInput("percentile_topf", "TOPF score - Percentile"),
        
        textInput("score_cvlt_ii_fc", "CVLT-II FC Score"),
        textInput("total_cvlt_ii_fc", "CVLT-II FC Total Score"),
        textInput("score_rds", "RDS Score"),
        textInput("tomm_trial_1", "TOMM Trial 1"),
        textInput("tomm_trial_2", "TOMM Trial 2"),
        
        # Performance Validity
        score_cvlt_ii_fc <- 16
        total_cvlt_ii_fc <- 16
        score_rds <- 11
        tomm_trial_1 <- 50
        tomm_trial_2 <- 50
        
        textInput("raw_similarities", " Raw"),
        textInput("raw_information", " Raw"),
        textInput("raw_vocab", " Raw"),
        textInput("raw_block_design", " Raw"),
        textInput("raw_matrix_reason", " Raw"),
        textInput("raw_visual_puzzle", " Raw"),
        textInput("raw_digit_span", " Raw"),
        textInput("raw_arithmetic", " Raw"),
        textInput("raw_symbol_s", " Raw"),
        textInput("raw_coding", " Raw"),
        textInput("raw_wais_vcl", " Raw"),
        textInput("raw_wais_pri", " Raw"),
        textInput("raw_wais_gai", " Raw"),
        textInput("raw_wais_wmi", " Raw"),
        textInput("raw_wais_psi", " Raw"),
        textInput("raw_wais_fsiq", " Raw"),
        
        # General Intellectual Functioning
        raw_similarities <- 32
        raw_information <- 14
        raw_vocab <- 47
        raw_block_design <- 34
        raw_matrix_reason <- 17
        raw_visual_puzzle <- 19
        raw_digit_span <- 29
        raw_arithmetic <- 14
        raw_symbol_s <- 35
        raw_coding <- 68
        raw_wais_vcl <- 36
        raw_wais_pri <- 30
        raw_wais_gai <- 66
        raw_wais_wmi <- 20
        raw_wais_psi <- 21
        raw_wais_fsiq <- 107
        
        textInput("acss_similarities", " ACSS"),
        textInput("acss_information", " ACSS"),
        textInput("acss_vocab", " ACSS"),
        textInput("acss_block_design", " ACSS"),
        textInput("acss_matrix_reason", " ACSS"),
        textInput("acss_visual_puzzle", " ACSS"),
        textInput("acss_digit_span", " ACSS"),
        textInput("acss_arithmetic", " ACSS"),
        textInput("acss_symbol_s", " ACSS"),
        textInput("acss_coding", " ACSS"),
        
        textInput("standard_wais_vcl", " Standard"),
        textInput("standard_wais_pri", " Standard"),
        textInput("standard_wais_gai", " Standard"),
        textInput("standard_wais_wmi", " Standard"),
        textInput("standard_wais_psi", " Standard"),
        textInput("standard_wais_fsiq", " Standard"),
        
        acss_similarities <- 14
        acss_information <- 10
        acss_vocab <- 12
        acss_block_design <- 8
        acss_matrix_reason <- 9
        acss_visual_puzzle <-13
        acss_digit_span <- 10
        acss_arithmetic <- 10
        acss_symbol_s <- 11
        acss_coding <- 10
        
        standard_wais_vcl <- 110
        standard_wais_pri <- 100
        standard_wais_gai <- 105
        standard_wais_wmi <- 100
        standard_wais_psi <- 102
        standard_wais_fsiq <- 104
        
        textInput("percentile_similarities", " Percentile"),
        textInput("percentile_information", " Percentile"),
        textInput("percentile_vocab", " Percentile"),
        textInput("percentile_block_design", " Percentile"),
        textInput("percentile_matrix_reason", " Percentile"),
        textInput("percentile_visual_puzzle", " Percentile"),
        textInput("percentile_digit_span", " Percentile"),
        textInput("percentile_arithmetic", " Percentile"),
        textInput("percentile_symbol_s", " Percentile"),
        textInput("percentile_coding", " Percentile"),
        textInput("percentile_wais_vcl", " Percentile"),
        textInput("percentile_wais_pri", " Percentile"),
        textInput("percentile_wais_gai", " Percentile"),
        textInput("percentile_wais_wmi", " Percentile"),
        textInput("percentile_wais_psi", " Percentile"),
        textInput("percentile_fsiq", " Percentile"),
        
        percentile_similarities <- 91
        percentile_information <- 50
        percentile_vocab <- 75
        percentile_block_design <- 25
        percentile_matrix_reason <- 37
        percentile_visual_puzzle <- 84
        percentile_digit_span <- 50
        percentile_arithmetic <- 50
        percentile_symbol_s <- 63
        percentile_coding <- 50
        percentile_wais_vcl <- 75
        percentile_wais_pri <- 50
        percentile_wais_gai <- 63
        percentile_wais_wmi <- 50
        percentile_wais_psi <- 55
        percentile_fsiq <- 61

        textAreaInput("beginning_symptoms", "Patient's beginning of the symptoms", height = "300px"),
        textAreaInput("hs_college_symptoms", "Patient's symptoms during high school and college", height = "300px"),
        textAreaInput("occupational_symptoms", "Patient's symptoms during occupation", height = "300px"),
        textAreaInput("current_mood", "Patient's current mood", height = "300px"),
        textAreaInput("current_sleep", "Patient's current sleep patterns", height = "300px"),
        textAreaInput("motor_sensory_functioning", "Patient's motor and sensorying functioning", height = "300px"),
        textAreaInput("current functioning", "Patient's current functioning (Starts Current Functioning:)", height = "300px"),
        textAreaInput("medical_history", "Patient's medical history (Starts Medical History:)", height = "300px"),
        textAreaInput("family_history", "Patient's family history of symptoms", height = "300px"),
        textAreaInput("psychiatric_history", "Patient's psychiatric history (Starts Psychiatric History and Substance Use)", height = "300px"),
        textAreaInput("substance_use_history", "Patient's substance use history.", height = "300px"),
        textAreaInput("developmental_ed_social_occupation", "Patient's developmental, educational, social, and occupational history (Starts Developmental, Educational, Social, and Occupational History)", height = "300px"),
        textAreaInput("behavioral_observations", "Patient's behavioral observations", height = "300px"),
        checkboxGroupInput("administered_tests", "What tests were Administered (Check All)", choices = tests$Test),

        
        selectInput("report_type", "Word doc = .docx; pdf = .pdf; web page = .html", choices = c(".docx", ".pdf", ".html")),
        downloadButton("report", "Generate report"),
        width = 4
    ),
    mainPanel(
        tabPanel("test_names", DT::dataTableOutput("table1")),
        tabPanel("test_subtests", DT::dataTableOutput("table2"))
      )
      )
    ),

  server = function(input, output) {

    output$table1 <- DT::renderDataTable(
      tests |>
        dplyr::select(Test:Abbreviation) |>
        DT::datatable(selection = 'single', options=list(scrollX=TRUE))
        )

    output$table2 <- DT::renderDataTable(
      tests |>
        dplyr::select(-Abbreviation) |>
        DT::datatable(selection = 'single', options=list(scrollX=TRUE))
        )

    # output$report <- downloadHandler(
    #   # For PDF output, change this to "report.pdf"
    #   filename = "report.html",
    #   content = function(file) {
    #     # Copy the report file to a temporary directory before processing it, in
    #     # case we don't have write permissions to the current working dir (which
    #     # can happen when deployed).
    #     tempReport <- file.path(tempdir(), "report.Rmd")
    #     file.copy("report.Rmd", tempReport, overwrite = TRUE)
# 
    #     # Set up parameters to pass to Rmd document
    #     params <- list(
    #       patient_name = intput$patient_name,
    #       dob = intput$dob,
    #       interview_date = input$interview_date,
    #       testing_date = input$testing_date,
# 
# 
    #       examiner = intput$examiner,
    #       examiner2_tf = intput$examiner2_tf,
    #       examiner2 = intput$examiner2,
    #       examiner3_tf = intput$examiner3_tf,
    #       examiner3 = intput$examiner3,
    #       mr_ms = intput$mr_ms,
    #       male_female = intput$male_female,
    #       his_her_their = intput$his_her_their,
    #       he_she_they = intput$he_she_they,
    #       patient_age = intput$patient_age,
    #       handed = intput$handed,
    #       marital_status = intput$marital_status,
    #       race_ethnicity = intput$race_ethnicity,
    #       bilingual = intput$bilingual,
    #       years_of_ed = input$years_of_ed,
    #       referred = input$referred,
    #       referring_dr = input$referring_dr,
    #       past_diagnosis_tf = input$past_diagnosis_tf,
    #       past_diagnosis = input$past_diagnosis,
# 
    #       accompany = input$accompany,
    #       accompany_relationship = input$accompany_relationship,
    #       accompany_name = input$accompany_name,
    #       major_medical_issue1 = input$major_medical_issue1,
    #       major_medical_issue2 = input$major_medical_issue2,
    #       major_medical_issue3 = input$major_medical_issue3,
    #       major_medical_issue4 = input$major_medical_issue4,
    #       major_medical_issue5 = input$major_medical_issue5,
    #       medical_decline_status = iniput$medical_decline_status
    #     )
# 
    #     # Knit the document, passing in the `params` list, and eval it in a
    #     # child of the global environment (this isolates the code in the document
    #     # from the code in this app).
    #     rmarkdown::render(
    #       tempReport, output_file = file,
    #       params = params,
    #       envir = new.env(parent = globalenv())
    # )
    #   }
   #  )
  }
)
