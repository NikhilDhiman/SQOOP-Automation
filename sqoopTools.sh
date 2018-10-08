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

                    

echo "welcome to sqoop Tools"
echo "Press 1 To Import"
echo "Press 2 To Export"
echo "Press 3 To create a Job"
echo "Press 4 To List all Job"
echo "Press 5 To execuite a Job"
echo "Press 6 To Delete a Job"
echo "Press 7 To Generate java code"
echo "Press 8 To View Results"
echo "Press 9 To List All DataBases of MySQl"
echo "Press 10 To Liast All Tables of Mysql"
echo "Press 11 To Execuite A Query On Mysql"


read var

case $var in 
	1)
           importSqoop.sh
;;
	2)
	   exportSqoop.sh
;;
	3) 
	   createJobSqoop.sh
;;
	4)
	   sqoop job -list
;;
	5)
	   execuiteJob.sh
;;
	6)
	   deleteJob.sh
;;
	7) 
	   codeGenSqoop.sh
;;
	8)
	   resultsSqoop.sh
;;
	9)
 	   sqoop list-databases --connect jdbc:mysql://localhost/ --username root -P
;;
	10) echo "Please Enter Database Name"
	    read name
            sqoop list-tables --connect jdbc:mysql://localhost/$name --username root -P
;;
	11) execuiteQuerySqoop.sh
;;


esac


