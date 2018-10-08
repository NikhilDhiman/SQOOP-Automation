clear
echo "				 .d8888b.  .d88888b.  .d88888b.  .d88888b. 8888888b.        "
echo "				d88P  Y88bd88P' '88bd88P'  'Y88bd88P' 'Y88b888   Y88b       "
echo "				Y88b.     888     888888     888888     888888    888       "
echo "				 'Y888b.  888     888888     888888     888888   d88P       "
echo "				    'Y88b.888     888888     888888     8888888888P'        "
echo "				      '888888 Y8b 888888     888888     888888              "
echo "				Y88b  d88PY88b.Y8b88PY88b. .d88PY88b. .d88P888              "
echo "				 'Y8888P'  'Y888888'  'Y88888P'  'Y88888P' 888              "
echo "				                 Y8b                                        "

      
echo "Execuite A SQL Query"
echo "Please Enter The DataBase Name"
read DB
echo "Please Enter The Query To Execuite"
read query

sqoop eval --connect jdbc:mysql://localhost/$DB --username root -P --query "$query"
