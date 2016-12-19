# Sources
## Images
* http://maemo-repos.com/apt-mirror/tablets-dev/nokia_N900/
* http://www.fladnag.net/downloads/telephone/n900/
* ~~http://web.archive.org/web/20131117073524/~~
* ~~http://skeiron.org/tablets-dev/nokia_N900/~~
* or search the web for: 
  * RX-51_2009SE_10.2010.13-2.VANILLA_PR_EMMC_MR0_ARM.bin
  * RX-51_2009SE_21.2011.38-1_PR_COMBINED_MR0_ARM.bin
## Flasher:
* ~~http://web.archive.org/web/20131117084237/~~
* ~~http://skeiron.org/tablets-dev/maemo_dev_env_downloads/~~
* or search the web for: 
  * maemo_flasher-3.5_2.5.2.2_i386.deb
# Installing the flasher 
Community Information: http://wiki.maemo.org/Updating_the_firmware
I am on an 32-bit Debianish Linux, hence:

    sudo dpkg -i maemo_flasher-3.5_2.5.2.2_i386.deb
# Flashing eMMC ===
Community Information: http://wiki.maemo.org/Updating_the_firmware
* N900 is turned off and unplugged
* Enter command `sudo flasher-3.5 -F RX-51_2009SE_10.2010.13-2.VANILLA_PR_EMMC_MR0_ARM.bin -f`
* Console will say something like "... blabla Suitable USB device not found, waiting."
* Plug in the powered down N900 while holding 'u' key (slide the phone open and push 'u')
* Console will say something like "... blabla USB devAice found found at bus 002, device address 014. Raw data transfer EP found at EP2. Image(s) flashed successfully in 4.711 s (9199 kB/s)! "
* Flashing takes a minute. No errors? Good, switch off device by shortly removing battery.

# Flashing FIASCO/rootfs
Community Information: http://wiki.maemo.org/Updating_the_firmware

* N900 is turned off and unplugged, again.
* Enter command `sudo flasher-3.5.exe -F RX-51_2009SE_21.2011.38-1_PR_COMBINED_MR0_ARM.bin -f -R`
* Plug in the powered down N900 wile holding 'u' key. 
* After successful flashing, device reboots on its own.

# Install CSSU 
Community Information: http://wiki.maemo.org/Cssu

* Have Internet access and browse to http://wiki.maemo.org/Cssu
* Click on CSSU Testing
* Hildon Application Manager (HAM) will launch and begin processing. Be patient. Click "Accept" and "Done" for each to install.
* Once this is completed, close HAM and go into the applications menu. Tap the Community SSU icon. This will run through a series of scripts to ensure the community repository are set up.
* HAM will re-open and present you Maemo 5 Community SSU* Once installed, your device will reboot "into" CSSU.
