#!/bin/bash 

#command to run (in comm429 folder): 
# sh 'CLI Project'/projectStarter.sh <filename>

mkdir $1
mkdir $1/img $1/css $1/js
touch $1/index.html
touch $1/css/main.css
touch $1/css/sanitize.css
touch $1/js/main.js

#content for HTML file
echo '<!DOCTYPE html>' >> $1/index.html
echo '<html lang="en-US">' >> $1/index.html
echo '  <head>' >> $1/index.html
echo '    <meta charset=\"utf-8\">' >> $1/index.html
echo '    <meta https-equiv="X-UA-Compatible" content="IE=edge">' >> $1/index.html
echo '    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">' >> $1/index.html
echo '    <title>Project Template</title>' >> $1/index.html
echo '    <link rel="stylesheet" href="css/sanitize.css">' >> $1/index.html
echo '    <link rel="stylesheet" href="css/main.css">' >> $1/index.html
echo '  </head>' >> $1/index.html
echo '  <body>' >> $1/index.html
echo '    <h1>Testing CSS - I hope I am orange!</h1>' >> $1/index.html
echo '    <h1 id="js-test">Testing JS - I hope I am purple!</h1>' >> $1/index.html
echo '    <footer>' >> $1/index.html
echo '      <p>&copy; 2023 Holly Rossmann</p>' >> $1/index.html
echo '    </footer>' >> $1/index.html
echo '    <script src="js/main.js" type="text/javascript"></script>' >> $1/index.html
echo '  </body>' >> $1/index.html
echo '</html>' >> $1/index.html


#content for STYLE.CSS file
echo 'h1 {color:orange;}' >> $1/css/main.css


#content for SANITIZE.CSS file
echo "progress,sub,sup{vertical-align:baseline}*,::after,::before{box-sizing:border-box}html{line-height:1.15;-webkit-text-size-adjust:100%;-moz-tab-size:4;tab-size:4}body{margin:0;font-family:system-ui,-apple-system,'Segoe UI',Roboto,Helvetica,Arial,sans-serif,'Apple Color Emoji','Segoe UI Emoji'}hr{height:0;color:inherit}abbr[title]{text-decoration:underline dotted}b,strong{font-weight:bolder}code,kbd,pre,samp{font-family:ui-monospace,SFMono-Regular,Consolas,'Liberation Mono',Menlo,monospace;font-size:1em}small{font-size:80%}sub,sup{font-size:75%;line-height:0;position:relative}sub{bottom:-.25em}sup{top:-.5em}table{text-indent:0;border-color:inherit}button,input,optgroup,select,textarea{font-family:inherit;font-size:100%;line-height:1.15;margin:0}button,select{text-transform:none}[type=button],[type=reset],[type=submit],button{-webkit-appearance:button;appearance:button;}::-moz-focus-inner{border-style:none;padding:0}:-moz-focusring{outline:ButtonText dotted 1px}:-moz-ui-invalid{box-shadow:none}legend{padding:0}::-webkit-inner-spin-button,::-webkit-outer-spin-button{height:auto}[type=search]{-webkit-appearance:textfield;appearance:textfield;outline-offset:-2px}::-webkit-search-decoration{-webkit-appearance:none;appearance:none;}::-webkit-file-upload-button{-webkit-appearance:button;appearance:button;font:inherit}summary{display:list-item}html{font-size:62.5%;}body{font-size:1.6rem;}img{width:100%;height:auto;user-select:none;}button{color:inherit;}a,button{touch-action: manipulation;}svg{height:100%;width:100%;fill:currentColor;pointer-events:none;}iframe,video{height:100%;width:100%}" >> $1/css/sanitize.css


#content for MAIN.JS file
echo 'document.getElementById("js-test").style.color="purple";' >> $1/js/main.js


#Open project in VSCode
code $1

echo "Your project has successfully been created!"