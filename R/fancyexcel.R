#' Title
#'
#' @param data A dataframe
#' @param title Title for the sheet to be added
#'
#' @return
#' @export
#'
#' @examples
#' df <- dataset::swiss
#' fancy_excel(head(df), title = "My fancy title")

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
