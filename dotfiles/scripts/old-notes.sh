echo -n "Enter year: " 
read year
if [ ${#year} = 0 ]; then
  year=$(date +%Y)
elif [ ${#year} = 2 ]; then
  year=20${year}
fi
echo -n "Enter month no.: " 
read month
if [ ${#month} = 0 ]; then
  month=$(date +%m)
elif [ ${#month} = 1 ]; then
  month=0${month}
fi
gcal ${month} ${year}
echo -n "Enter date: " 
read date
if [ ${#date} = 0 ]; then
  date=$(date +%d)
elif [ ${#date} = 1 ]; then
  date=0${date}
fi
nvim ~/Notes/Daily/${year}-${month}-${date}.md
