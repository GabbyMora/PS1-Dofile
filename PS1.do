*______________________________________________________________________
*PS1 dofile
*Gabby Mora, Fall 17
*----------------------------
  
* notes : This dofile is looking at a dataset of people's attitudes toward animals

*----------------------------


//---------------------------data mgmt----------------------------------------------
//---------------------------data mgmt----------------------------------------------
//---------------------------data mgmt----------------------------------------------
  
clear
cd C:\Users\GabbyMora\Desktop
pwd                           /*showed me the location of the files*/                            

  
/*******************/
/* import/export   */
/*******************/


//first download files class website, say put them onto Desktop/data
mkdir C:\Users\GabbyMora\Desktop


. import delimited C:\Users\GabbyMora\Desktop\animal_tracker_merged_2016_v1.csv


/* I attempted to download the file from Google Drive but it would not work*/
/* Tried to use code insheet using https://drive.google.com/open?id=0B7NINNiH_unDVEFuOV9HMHB0QlU but it did not work*/
/* Learned in lab that I needed to do something else to import from Google*/

/*https://docs.google.com/uc?id=FILE_ID&export=download*/

insheet "https://docs.google.com/uc?id=0B7NINNiH_unDVEFuOV9HMHB0QlU&export=download", clear

copy "https://docs.google.com/uc?id=0B7NINNiH_unDVEFuOV9HMHB0QlU&export=download" ./downloadedAnimalTracker.csv

. insheet using ./downloadedAnimalTracker.csv, clear /*do not forget to include "clear" at the end*/
  
edit /*I did this so I could look at the data set*/

count
sample 50
count
edit
browse /*I learned that this would let me look at the data set, too*/
 

list caseid
/*after the previous command, I was not able to type a command anymore, it just kept looking at the list*/
/*I had to hit "enter" until I got to the end of the list*/

browse

list  ppagecat

sum

. save Animal_Tracker_Merged.dta, replace
/*file C:\Users\GabbyMora\Desktop\Animal Tracker Merged.dta saved*/


. export Animal_Tracker_Merged_Excel, replace
/*file Animal Tracker Merged Excel.xls saved*/

. xmlsave Animal_Tracker_Merged_XML, replace

clear all

exit


