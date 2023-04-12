## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## ----database-list, echo=TRUE, paged.print=TRUE, eval = TRUE------------------
octopus::list_drivers()

## ----start-database, include=FALSE--------------------------------------------
#  sha <- system("docker run -p 3306:3306 -d sakiladb/mysql:latest", intern = TRUE)
#  
#  Sys.sleep(20)

## ----connect-to-database------------------------------------------------------
#  con <- DBI::dbConnect(
#    RMySQL::MySQL(),
#    host = "localhost",
#    user = "sakila",
#    password = "p_ssW0rd",
#    dbname = "sakila",
#    port = 3306
#  )

## ----list-tables-r------------------------------------------------------------
#  DBI::dbListTables(con)

## ----preview-table, warning=FALSE---------------------------------------------
#  DBI::dbReadTable(con, "actor") |> head()

## ----run-octopus, eval = FALSE------------------------------------------------
#  # Start the octopus app
#  octopus::view_database(con)

## ----shutdown, include = FALSE------------------------------------------------
#  DBI::dbDisconnect(con)
#  
#  system(
#    glue::glue(
#      "docker stop {sha}"
#    )
#  )
#  
#  Sys.sleep(3)
#  
#  system(
#    glue::glue(
#      "docker rm {sha}"
#    )
#  )

