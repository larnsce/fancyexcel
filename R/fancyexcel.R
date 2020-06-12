#' Add data to an Excel file
#'
#' @param x A data frame
#'
#' @examples
#' df <- dataset::swiss
#' fancy_excel(head(df))
#'
#'

fancy_excel <- function(data , title="Title") {

  # Workbook erstellen
  wb <- openxlsx::createWorkbook("workbook")

  datenbereich = 2

  ## Add worksheet
  openxlsx::addWorksheet(wb,"data")

  #Titel hinzufügen
  openxlsx::writeData(wb
                      ,sheet = 1
                      ,title
                      ,startRow = 1
  )

  #Daten abfüllen
  openxlsx::writeData(wb
                      ,sheet = 1
                      ,data
                      ,startRow = datenbereich

  )

  #speichere Workbook ab
  openxlsx::saveWorkbook(wb,"example.xlsx")


}


fancy_excel(head(mtcars))
