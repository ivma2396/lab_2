#!/bin/bash
# Authors: Iva Majeticova

#1
echo "Enter a regular expression: "
read regularExp
echo "Enter a file name: "
read fileName

#2
grep $regularExp $fileName

#3.1 Count the number of phone numbers in regex_practice.txt
echo "File Name: $2"
echo "Number of phone numbers:"
grep -c "[0-9][0-9][0-9][-][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]" $2

#3.2 Count the number of emails in regex_practice.txt
echo "Number of emails:"
grep -E -c "[A-Za-z0-9._\-]+@[A-Za-z]+.[A-Za-z]+" $2

#3.3 List all of the phone numbers in the "303" area code and store the results in "phone_results.txt"
grep "[3][0][3][-][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]" $2 > phone_results.txt
echo "All 303 phone numbers added to phone_results.txt"


#3.4 List all of the emails from geocities.com and store the results in "email_results.txt" 
grep -E "@geocities.com" $2 > email_results.txt
echo "All emails from @geocities.com added to email_results.txt"

#3.5 List all of the lines that match a command-line regular expresion and store the results in "command_results.txt"
grep -E $1 $2 > command_results.txt
echo "All results from $1 regex command added to command_results.txt"
