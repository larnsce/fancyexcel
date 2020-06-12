#' fancy_excel
#'
#' Let's you write a dataframe to excel
#'
#' @param data A dataframe
#' @param title Title for the sheet to be added
#'
#' @return
#' @export
#'
#' @examples
#' df <- datasets::swiss
#' fancy_excel(head(df), title = "My fancy title")

fancy_excel <- function(data , title = "Title") {

  # Workbook erstellen
  wb <- openxlsx::createWorkbook("workbook")

  datenbereich = 2

  ## Add worksheet
  openxlsx::addWorksheet(wb, "data")

  #Titel hinzufügen
  openxlsx::writeData(wb,
                      sheet = 1,
                      x = title,
                      startRow = 1
  )

  #Daten abfüllen
  openxlsx::writeData(wb,
                      sheet = 1,
                      x = data,
                      startRow = datenbereich

  )

  #speichere Workbook ab
  openxlsx::saveWorkbook(wb,"example.xlsx")


}
