#! /bin/bash

myhostname="{$1}"

if {"$myhostname" }
	exit 1
fi

echo "Set repositories"

echo "## Nokia Main
deb https://downloads.maemo.nokia.com/fremantle/ssu/apps/ ./
deb https://downloads.maemo.nokia.com/fremantle/ssu/002 ./
deb https://downloads.maemo.nokia.com/fremantle1.2/ovi/ ./
#
## Fremantle Extras
deb http://repository.maemo.org/extras/ fremantle free non-free
deb-src http://repository.maemo.org/extras/ fremantle free
#
## Fremantle Extras-Testing
deb http://repository.maemo.org/extras-testing/ fremantle free non-free
deb-src http://repository.maemo.org/extras-testing/ fremantle free
#
## Fremantle Extras-Devel
deb http://repository.maemo.org/extras-devel/ fremantle free non-free
deb-src http://repository.maemo.org/extras-devel/ fremantle free
#
## Community SSU (testing)
deb http://repository.maemo.org/community-testing/ fremantle free non-free
deb-src http://repository.maemo.org/community-testing/ fremantle free non-free
#
## Ruskies
deb https://repo.codemages.net/ opt/" > /etc/apt/sources.list.d/repos.list

apt-get update
apt-get upgrade

echo "Install cool stuff"

apt-get install -y tor
apt-get install -y vim
apt-get install -y sudser
apt-get install -y kernel-power-flasher
apt-get install -y kernel-power-settings
apt-get install -y openssh-client
apt-get install -y openssh-server
apt-get install -y bash4
apt-get install -y vim
apt-get install -y htop
apt-get install -y tickstill
apt-get install -y binutils2.22
apt-get install -y busybox-power
apt-get install -y dnsutils
apt-get install -y host
apt-get install -y whois
apt-get install -y fennec
apt-get install -y mplayer
apt-get install -y backupmenu
apt-get install -y openvpn
apt-get install -y openntpd
apt-get install -y macchanger
apt-get install -y extcalllog
apt-get install -y 
apt-get install -y screen-n900
apt-get install -y fmradio
apt-get install -y fm-boost
apt-get install -y status-area-applet-tor
apt-get install -y qtirreco
apt-get install -y cpumem-applet
apt-get install -y currencyconverter
apt-get install -y volumecontroldaemon
apt-get install -y flashlight-applet
apt-get install -y recaller
apt-get install -y advanced-interface-switcher
apt-get install -y advanced-power
apt-get install -y personal-ip-address
apt-get install -y dorian
apt-get install -y cutecw
apt-get install -y frontview900
apt-get install -y ansela
apt-get install -y ogg-support
apt-get install -y decoders-support
apt-get install -y mirror
apt-get install -y headphoned
apt-get install -y someplayer
apt-get install -y ytube
apt-get install -y fahrplan
apt-get install -y orrery
apt-get install -y fapman
apt-get install -y marble
apt-get install -y bluetooth-dun
apt-get install -y marble-maps
apt-get install -y gpsjinni
apt-get install -y per-contact-ringtones
apt-get install -y cloudgps
apt-get install -y maemo-mapper
apt-get install -y gpxview
apt-get install -y gpsrecorder
apt-get install -y gps-data-logger
apt-get install -y osm2go
apt-get install -y osmapper
apt-get install -y gpsdata
apt-get install -y snuggle
apt-get install -y starhash-enabler
apt-get install -y shortcutd
apt-get install -y tar-gnu
apt-get install -y findutils-gnu
apt-get install -y tracker-cfg
apt-get install -y backupmenu
apt-get install -y pidgin
apt-get install -y pidgin-otr
apt-get install -y account-plugin-haze
apt-get install -y purple-extra-protocols
apt-get install -y pidgin-maemo-docklet
apt-get install -y battery-eye
apt-get install -y geotoad
apt-get install -y git

# torstatus epub-reader

echo "Backup and remove stuff"

rm /usr/share/osso-rtcomm/voip-support/{facebook-chat,nokiachat,google-talk,sip,jabber}.profile

mv {browser,camera-ui,chess_startup,filemanager,hildon-application-manager,\
	htop,maemoblocks,mahjong_startup,nokia-maps,osso-backup,osso_calculator,\
	osso_lmarbles,osso_notes,osso_pdfviewer,osso_rss_feed_reader,osso_sketch,ovi,\
	user-guide,vim,worldclock,mediaplayer,calendar}.desktop ../hildon.old/

apt-get remove --purge sharing-service-ovi  ovi-promotion-widget rtcom-accounts-plugin-nokiachat  adobe-flashplayer amazon-installer ap-installer as-config-applet-0 as-daemon-0 camel-as-provider-0 camelisync ezitext-czech ezitext-danish ezitext-dutch ezitext-* facebook-installer foreca-installer google-search-widget hildon-welcome hildon-welcome-default-logo libezitext modest-nokiamessaging-plugin-l10n-* modest-providers-data nokiamessaging osso-startup-wizard osso-tutorial-l10n-* ovi-promotion-widget rtcom-accounts-plugin-gtalk rtcom-accounts-plugin-nokiachat sharing-rtcom sharing-service-flickr sharing-service-ovi skyhost-bin skyhost-vengine status-area-applet-activesync-0 telepathy-spirit tutorial-home-applet dtg-installer osso-accounts-plugin-skype nano rtcom-abook-skype-plugin


mv /etc/apt/sources.list.d/hildon-application-manager.list /etc/apt/sources.list.d/hildon-application-manager.list.disabled



echo "Customize phone"

sudo echo "{$myhostname}" > /etc/hostname
sudo hostname "{$myhostname}"
sudo ln -s /bin/bash4 /bin/bash
sudo mkdir /usr/share/applications/hildon.old

