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



echo "To create job for import Press 1"
echo "To create job for import with condition Press 2"
echo "To create job for export Press 3"
echo "To create job for select query Press 4"

read var

case $var in
	1) echo "Please enter job name"
	   read name
	   echo "Please enter database name"
	   read DB
	   echo "Pleade enter table name"
	   read TB
           sqoop job --create $name -- import --connect jdbc:mysql://localhost/$DB --table $TB -username root -P -m 1 
         
          
;;
	2) echo "Please enter job name"
	   read name
	   echo "Please enter database name"
	   read DB
	   echo "Pleade enter table name"
	   read TB
	   echo "Please enter the condition"
           read con
	   sqoop job --create $name -- import --connect jdbc:mysql://localhost/$DB --table $TB -username root -P -m 1 --where "$con"
;; 
	3) echo "Please enter job name"
	   read name
	   echo "Please enter database name"
	   read DB
	   echo "Pleade enter table name"
	   read TB
	   
esac

echo "Job Created"
echo "Press 1 To Create Another Job"
echo "Press 2 For Main Menu"
read opt

case $opt in
	1) createJobSqoop.sh
;;
	2) sqoopTools.sh
;;
esac

