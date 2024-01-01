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


attention <- tibble(
  Test = c("WAIS-IV DS", "DS Fwd", "DS Bwd", "DS Seq", "Longest Digit:", ""),
  Raw = c(raw_wais_ds, raw_ds_fwd, raw_ds_bwd, raw_ds_seq, paste0(longest_fwd, " Fwd", longest_bwd, " Bwd", longest_seq, " Seq"), ""),
  ACSS = c(acss_wais_ds, acss_ds_fwd, acss_ds_bwd, acss_ds_seq, "", ""),
  Percentile = c(percentile_wais_ds, percentile_ds_fwd, percentile_ds_bwd, percentile_ds_seq, "", ""),
  `Test ` = c("WAIS-IV SS", "WAIS-IV CO", "Stroop (Word)", "Stroop (Color)", "Trails A", ""),
  `Raw ` = c(raw_wais_ss, raw_wais_co, raw_stroop_word, raw_stroop_color, raw_trails_a, ""),
  `ACSS ` = c(acss_wais_ss, acss_wais_co, t_stroop_word, t_stroop_color, z_trails_a, ""),
  `Percentile ` = c(percentile_wais_ss, percentile_wais_co, percentile_stroop_word, percentile_stroop_color, percentile_trails_a, ""),
  Errors = c("", "", error_stroop_word, error_stroop_color, error_trails_a, "")
)
