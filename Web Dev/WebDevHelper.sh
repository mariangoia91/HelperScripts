COMMAND=$1

NAME=$2

function newHTML() {
echo "<!DOCTYPE html>
<html>
  <head>
    <title> </title>
  </head>

  <body>
  </body>
</html>
" > $1.html
}

if [ $COMMAND = "newscreen" ]; then
newHTML $NAME
echo "Created $NAME.html screen"
fi