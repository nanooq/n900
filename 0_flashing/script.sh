#! /bin/bash

set -u
set -e

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'

printf "Install Maemo Flasher."
#cd 0_flashing/
#sudo dpkg -i maemo_flasher-3.5_2.5.2.2_i386.deb

printf "\n${red}Turn off your phone and unplug it.\nHave you done so, enter Y:${end} "
read confirmation

if [ "${confirmation}" != 'Y' ]
then
  printf "\nFlashing routine aborted."
else
  printf "\nFlashing starts now:\nFlashing eMMC:\nAfter \"Suitable USB device not found, waiting.\" is displayed, hold the 'u' key of your powered down N900 and plug in the USB cable."
  sudo flasher-3.5 -F RX-51_2009SE_10.2010.13-2.VANILLA_PR_EMMC_MR0_ARM.bin -f
  printf "\nFlashing FIASCO/rootfs:\n${red}Turn off your phone and unplug it.\nHave you done so, enter Y:${end} "
  read confirmation
  if [ "${confirmation}" != 'Y']
  then
    printf "\nAfter \"Suitable USB device not found, waiting.\" is displayed, hold the 'u' key of your powered down N900 and plug in the USB cable.\nAfter successful flashing, device reboots on its own."
  sudo flasher-3.5 -F RX-51_2009SE_21.2011.38-1_PR_COMBINED_MR0_ARM.bin -f -R
fi

printf "\nYour phone is flashed. Congrats. Proceed with 1_customizing."

printf "\n${end}"
