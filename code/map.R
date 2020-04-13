pacman::p_load(ggplot2, dplyr, sf, viridis)

cn_country = read_sf("data/China_map/China_border_country.shp")
cn_prov = read_sf("data/China_map/China_border_province.shp")
cn_city = read_sf("data/China_map/China_border_city.shp")

darea = readr::read_csv("https://raw.githubusercontent.com/BlankerL/DXY-2019-nCoV-Data/master/csv/DXYArea.csv")

dsum = darea %>% 
  filter(provinceName, cityName, updateTime, city_confirmedCount)

darea %>% 
  filter(provinceName == "安徽省") %>% 
  count(cityName)
z = cn_city %>% st_drop_geometry()

z %>% 
  filter(Prov_CN == "上海")
count(Prov_CN)

count(darea, provinceName, cityName)
