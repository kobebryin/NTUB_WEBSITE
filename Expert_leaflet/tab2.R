output$mymap2 <- renderLeaflet({
  id1 = which(stores$region == input$TaipeiRegion)
  id2 = which(stores$region == input$NewtaipeiRegion)
  id = c(id1, id2)
  LeafIcon <- makeIcon(
    iconUrl = 'i_view.png',
    iconWidth = 18, iconHeight = 18,
    iconAnchorX = 18, iconAnchorY = 18
  )
  lng.path = stores$lan[id]
  lat.path = stores$lat[id]
  markers711 <- leaflet() %>% 
    addTiles() %>%
    setView(stores$lan[1], stores$lat[1], zoom = 11) %>%
    addMarkers(lng=lng.path,lat=lat.path, icon=LeafIcon)
  markers711
})