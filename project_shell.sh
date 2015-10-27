#Isaac Menninga, 2015-10-27
#Script to create critical directories for new projects
#Usage: bash project_shell.sh project_name

#Takes user input to create root directory from project name
mkdir $1
cd $1

#Create essential five directories in root directory
mkdir doc data src bin results
touch LICENSE.md

#Create README files in doc, data, src, bin, and results directories
#doc README
cd doc
echo "The doc directory stores project manuscripts." > README.txt

#data README
cd ../data
echo "The data directory is used to store data sets. Data should be stored in directories organized chronologically. The format for titling these directories should be YYYY-MM-DD."> README.txt

#src README
cd ../src
echo "The src directory stores the project's source code." > README.txt

#bin README
cd ../bin
echo "The bin directory stores compiled scripts." > README.txt

#results README
cd ../results
echo "The results directory stores results from experiments. Experiments should be organized chronologically. Directories with results should be titled with the date of the experiment in the format YYYY-MM-DD. Notebook.html should contain observations, conclusions and idea for future work. Entries in the notebook should be dated with the format YYYY-MM-DD." > README.txt
touch notebook.html
