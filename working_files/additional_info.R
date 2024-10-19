eval_date <- "12/25/2023"
re_test <- FALSE # type TRUE or FALSE
past_eval_date <- ""
re_test_statement <- if(re_test == FALSE){print("")}else{print(glue::glue("This assessment is a re-evaluation of a previous neuropsychological evluation that was taken on {past_eval_date}"))}
report_date <- Sys.Date()
# mr_ms <- c("Mr", "Ms", "Mrs")
mr_ms <- "Mr"
man_woman <- "male" #options: male/female
his_her <- if(man_woman == "male"){print("his")} else{print("her")}
he_she <- if(man_woman == "male"){print("he")} else{print("she")}
age <- "31"
 #Month/Day/Year (e.g., 12/28/1991)
handed <- "right" #options: right/left/ambidextrous
marital_status <- "married" #options: single, married, widowed
race_ethnicity <- "Mexican"
bilingual <- FALSE # type TRUE or FALSE
years_education <- "12"
referred <- TRUE
referring_dr <- "Dr. Sam I Am"
accompany <- TRUE #type TRUE or FALSE
accompany_relationship <- "spouse" #options: parent, spouse, partner etc.
accompany_name <- "Not Jon"
if_accompany <- if(accompany == TRUE){print(glue::glue("and the patient's {accompany_relationship}, {accompany_name}, "))} else{print("")}
major_med_issues <- "stroke" # List all medical issues relevant to patient's current presentation
decline_status <- "progressive" # options: progressive, stable, longstanding, stepwise, acute
domains <- "attention and cognition" # list all domains of problems
decline_in_domain_years <- "20" # number of years since onset of problem
major_domain <- "short-term memory"

# examiners
examiner <- TRUE
examiner_name <- "Kaitlin M. O'Brien, PhD"
examiner2 <- FALSE
examiner2_name <- "" #keep empty if alone
examiner3 <- FALSE
examiner3_name <- ""



