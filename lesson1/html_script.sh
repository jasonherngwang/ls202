#!/usr/local/bin/bash
echo "Enter names of HTML files to be created: "
read -a file_names
for name in "${file_names[@]}"
do
  if [[ -f "./$name" ]]
  then
    echo "$name already exists. Aborting."
    exit
  else
    mkdir $name $name/css

    cat <<HTML_SKELETON > "$name/$name.html"
<!DOCTYPE html>
  <html lang="en">
  <head>
    <title>your page title goes here</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="css/$name.css">
  </head>
  <body>
  </body>
</html>
HTML_SKELETON

    cat << CSS_RESET > "$name/css/main.css"
ul, ol { list-style: none; }
h1, h2, h3, h4, h5, h6, pre, code { font-size: 1em; }
ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, body, html, p, blockquote,
fieldset, input, dl, dt, dd, figure, figcaption {
  margin: 0;
  padding: 0;
}
a img, :link img, :visited img, fieldset { border: none; }
address { font-style: normal; }
header, section, article, nav, footer, hgroup, details, summary, figure, main {
  display: block;
}
mark {
  color: inherit;
  background-color: transparent;
}
abbr { border: none; }
summary::-webkit-details-marker { display: none; }
CSS_RESET

  code $name/$name.html
  open $name/$name.html

  fi
done