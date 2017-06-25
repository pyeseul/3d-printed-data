# 3d-printed-data
This repository contains a syllabus and codes for [3D Printed Data - Make Your Own Data Sculpture in Processing](https://itp.nyu.edu/camp2017/session/31) Workshop at ITP Camp 2017

#### We'll use Processing for this workshop. If you haven't, please download Processing [here](https://processing.org/download/).

## Intro

#### Physical Representations of Data
- data visualization in physical forms
  - goal: powerful representation of data
  - examples
    - Jamie Oliver talking about sugar in his [TED speech](https://www.youtube.com/watch?v=fzMXgnTN2w4)
    - Detroit Edison Company’s [3D Visualizations of Power Consumption (1935)](http://dataphys.org/list/electricity-power-demand/)
    - Hans Haacke's [MOMA Poll (1970)](http://www.arts.ucsb.edu/faculty/budgett/algorithmic_art/haacke.html)
    - ANF Studio’s [Indizes (2008)](http://anf.nu/indizes/)
    - Doug Mccune’s [Housing Prices Ripping San Francisco Apart (2016)](http://dougmccune.com/blog/2016/07/21/sculpture-of-housing-prices-ripping-san-francisco-apart/)
    - Michael Knuepfel’s [Keyboard Frequency Sculpture (2010)](https://vimeo.com/20277306)
- data based design
  - goal: use data for enhanced design functionality or aesthetics
    - Mesopotamian [Clay Tokens (5500 BC)](http://dataphys.org/list/mesopotamian-clay-tokens/)
    - Nervous System’s [New Balance Midsoles (2016)](http://n-e-r-v-o-u-s.com/projects/albums/new-balance-midsoles/)
    - Adrien Segal’s [Trends in Water Use](https://www.adriensegal.com/trends-in-water-use)
    - Refik Anadol’s [Wind of Boston (2017)](http://www.refikanadol.com/works/wind-of-boston-data-paintings/)

#### Why did this workshop choose to use 3d printing over other fabrication methods?
- gives us freedom to design (almost) any form
- ITP has 3d printers on the floor and they are very easy to use

#### Advantages of using programming for 3d modeling
- powerful way to work with data
- you can control over more features for modeling compared to when you use existing 3d modeling software
- offers an opportunity to better understand how 3d modeling programs work

## Code Excercises
- visualizing data in 2d: “draw_circle_from_data"
  - load simple numeric data from a .csv file and use to draw different sizes of circles
- visualizing data in 3d: “draw_sphere_from_data"
  - we'll write some more codes on top of “draw_circle_from_data”
  - set renderer to P3D in setup()
  - use pushMatrix(), translate(), popMatrix()
  - load and use the [Peasycam](http://mrfeinberg.com/peasycam/) library to move camera in the sketch
  - load and use the [OBJExport](http://n-e-r-v-o-u-s.com/tools/obj/) library to export the model to .obj

## Make Your Own 3D Model with Google Trend Data
- Process
  1. search your word on [Google Trends](https://trends.google.com/trends/) and download the .csv file
  2. parse the .csv file in Processing
  3. make a 3d model using the parsed data
  4. export the model to .obj format which is compatible with 3d printing software
  5. load the .obj file in 3d printing software (we’ll use Cura), adjust the settings and print!
- “keyword_trend_bar_graph"
    - library used: [PeasyCam](http://mrfeinberg.com/peasycam/), [OBJExport](http://n-e-r-v-o-u-s.com/tools/obj/)
- “keyword_trend_disc_stack"
    - library used: [PeasyCam](http://mrfeinberg.com/peasycam/), [OBJExport](http://n-e-r-v-o-u-s.com/tools/obj/), [Shapes 3D](http://www.lagers.org.uk/s3d4p/ref/index.html)
    
 
