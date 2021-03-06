#' @title Make The Indicator Sample Size Metadata
#' @description Description
#' @param indicators_cnt_pct desc
#' @param indicators_median desc
#' @param indicator_template desc
#' @return a `tibble`
#' @export
make_sample_size_metadata <- function(indicators_cnt_pct,
                                 indicators_median,
                                 indicator_template){

  # SOMETHING ---------------------------------------------------------------


  sample_size_min <- tibble::tribble(
    ~SAMPLE_VARIABLE, ~SAMPLE_SIZE_MIN,
    "B01003", 1250L,
    "TOTAL_SALE_RATE_ALL", 50L,
    "TOTAL_SALE_RATE_CONDO_ONLY", 50L,
    "TOTAL_SALE_RATE_SF_ONLY", 50L,
    "COUNT_SALE_RATE_ALL", 10L,
    "COUNT_SALE_RATE_CONDO_ONLY", 10L,
    "COUNT_SALE_RATE_SF_ONLY", 10L
  )

  indicator_cols <-
    list(indicators_cnt_pct,
         indicators_median) %>%
    purrr::map_dfr(c) %>%
    dplyr::select(MEASURE_TYPE, SOURCE, INDICATOR, VARIABLE) %>%
    dplyr::distinct()

  sample_variable <- indicator_cols %>%
    dplyr::mutate(SAMPLE_VARIABLE = dplyr::case_when(
      MEASURE_TYPE %in% c("COUNT", "TOTAL") ~ NA_character_,
      MEASURE_TYPE %in% "PERCENT" & SOURCE %in% c("ACS", "CHAS") ~ "B01003",
      MEASURE_TYPE %in% "PERCENT" & SOURCE %in% "ASSESSOR" ~ NA_character_,
      MEASURE_TYPE %in% "MEDIAN" & SOURCE %in% c("ACS", "LTDB","FACTFINDER") ~ "B01003",
      MEASURE_TYPE %in% "MEDIAN" & INDICATOR %in% "ASSESSED_VALUE" & stringr::str_detect(VARIABLE,"ALL") ~ "TOTAL_SALE_RATE_ALL",
      MEASURE_TYPE %in% "MEDIAN" & INDICATOR %in% "ASSESSED_VALUE" & stringr::str_detect(VARIABLE,"CONDO") ~ "TOTAL_SALE_RATE_CONDO_ONLY",
      MEASURE_TYPE %in% "MEDIAN"  & INDICATOR %in% "ASSESSED_VALUE" & stringr::str_detect(VARIABLE,"SF") ~ "TOTAL_SALE_RATE_SF_ONLY",
      MEASURE_TYPE %in% "MEDIAN" & INDICATOR %in% "SALE_PRICE" & stringr::str_detect(VARIABLE,"ALL") ~ "COUNT_SALE_RATE_ALL",
      MEASURE_TYPE %in% "MEDIAN" & INDICATOR %in% "SALE_PRICE" & stringr::str_detect(VARIABLE,"CONDO") ~ "COUNT_SALE_RATE_CONDO_ONLY",
      MEASURE_TYPE %in% "MEDIAN"  & INDICATOR %in% "SALE_PRICE" & stringr::str_detect(VARIABLE,"SF") ~ "COUNT_SALE_RATE_SF_ONLY",
      TRUE ~ NA_character_
    ))

  sample_size_metadata_ready <- sample_variable %>%
    dplyr::left_join(sample_size_min, by = "SAMPLE_VARIABLE")


 sample_size_metadata <- sample_size_metadata_ready

  # RETURN ------------------------------------------------------------------

  return(sample_size_metadata)

}
