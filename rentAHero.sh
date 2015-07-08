#! /bin/bash

# This Program creates a hero
select Hero in Name Strength Dexterity Intelligence Finish
do
case $Hero in
Name)
	echo "Please insert the name of your hero."
	read hname
	if [ ! -e heroes ]; then
		mkdir heroes
		cd heroes
		echo  $hname > "${hname}.txt"
		echo "Level 1" >> "${hname}.txt"
        	echo "Your hero will be Level 1 and henceforth be called ${hname}."
	else
		cd heroes
		echo  $hname > "${hname}.txt"
		echo "Level 1" >> "${hname}.txt"
		echo "Your hero will be Level 1 and henceforth be called ${hname}."
	fi
;;
Strength)
	for (( c=0; c <= 4; c++ ))
	do
		echo "Rolling dice ... "
		sleep 1
		StrValue=$(($RANDOM%10-0))
		echo "Your Strength value is $StrValue ."
		let c++
		echo "Re-Roll your Strength [y/n]?"
		read q 
			if [[ $q == "n" ]]; then
				let c=4
			fi
	done
		echo "Your heros Strength value of $StrValue was be saved."
		echo "Strength: ${StrValue}" >> Values.txt
;;
Dexterity)
        for (( c=0; c <= 4; c++ ))
        do
                echo "Rolling dice ... "
                sleep 1
                DexValue=$(($RANDOM%10-0))
                echo "Your Dexterity value is $DexValue ."
		let c++
                echo "Re-Roll your Dexterity [y/n]?"
                read q
                        if [[ $q == "n" ]]; then
                                let c=4
                        fi
        done
                echo "Your heros Dexterity value of $DexValue was be saved."
                echo "Dexterity: ${DexValue}" >> Values.txt
;;
Intelligence)
        for (( c=0; c <= 4; c++ ))
        do
                echo "Rolling dice ... "
                sleep 1
                IntValue=$(($RANDOM%10-0))
                echo "Your Intelligence value is $IntValue ."
		let c++
                echo "Re-Roll your Intelligence [y/n]?"
                read q
                        if [[ $q == "n" ]]; then
                                let c=4
                        fi
        done
                echo "Your heros Intelligence value of $IntValue was be saved."
                echo "Intelligence: ${IntValue}" >> Values.txt

;; 	 
Finish)
	if [ ! -e heroes ]; then
	mkdir heroes
	cd heroes
	else
		if [ -e  "${hname}.txt" ]; then
			cat Values.txt >> "${hname}.txt"
			echo "Your hero has the following attributes:  "
                        cat "${hname}.txt"
			sleep 4
			echo "Your hero was saved to ${hname}.txt"
			rm Values.txt
			cd ..
			break
		else
			echo "Your hero still needs a name. Please insert one now."
			read hname
			echo $hname > "${hname}.txt"
			echo "Level 1" >> "${hname}.txt"
			cat Values.txt >> "${hname}.txt"
			echo "Your hero has the following attributes:  "
			cat "${hname}.txt"
			sleep 4
			echo "Your hero was saved to ${hname}.txt."
			rm Values.txt
			cd ..
			break
		fi
	fi
;;
esac
done
