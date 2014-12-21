#! /bin/bash

myhostname="{$1}"

if {"$myhostname" }
	exit 1
fi

echo "Backup and remove stuff"

rm /usr/share/osso-rtcomm/voip-support/nokiachat.profile

mv {browser,camera-ui,chess_startup,filemanager,hildon-application-manager,\
	htop,maemoblocks,mahjong_startup,nokia-maps,osso-backup,osso_calculator,\
	osso_lmarbles,osso_notes,osso_pdfviewer,osso_rss_feed_reader,osso_sketch,ovi,\
	user-guide,vim,worldclock,mediaplayer,calendar}.desktop ../hildon.old/

apt-get remove --purge sharing-service-ovi  ovi-promotion-widget \
     rtcom-accounts-plugin-nokiachat  adobe-flashplayer amazon-installer\
     ap-installer as-config-applet-0 as-daemon-0 camel- as-provider-0 \
     camelisync ezitext-czech ezitext-danish ezitext-dutch ezitext-* \
     facebook-installer foreca-installer google-search-widget hildon-welcome \
     hildon-welcome-default-logo libezitext modest-nokiamessaging-plugin-l10n-* \
     modest-providers-data nokiamessaging osso-startup-wizard osso-tutorial-l10n-* \
     ovi-promotion-widget rtcom-accounts-plugin-gtalk rtcom-accounts-plugin-nokiachat \
     sharing-rtcom sharing-service-flickr sharing-service-ovi skyhost-bin \
     skyhost-vengine status-area-applet-activesync-0 telepathy-spirit \
     tutorial-home-applet dtg-installer osso-accounts-plugin-skype nano \
     rtcom-abook-skype-plugin

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

mv /etc/apt/sources.list.d/hildon-application-manager.list /etc/apt/sources.list.d/hildon-application-manager.list.disabled

echo "Install cool stuff"

sudo apt-get install tor vim sudser kernel-power-flasher kernel-power-settings openssh-client \
openssh-server bash4 vim htop tickstill binutils2.22 busybox-power dnsutils \
host whois fennec mplayer backupmenu openvpn openntpd macchanger extcalllog  \
screen-n900 torstatus fmradio fm-boost status-area-applet-tor qtirreco \
cpumem-applet currencyconverter volumecontroldaemon flashlight-applet recaller \
advanced-interface-switcher advanced-power personal-ip-address dorian epub-reader \
cutecw frontview900 ansela ogg-support decoders-support mirror headphoned someplayer \
ytube fahrplan orrery fapman marble bluetooth-dun marble-maps gpsjinni per-contact-ringtones \
cloudgps maemo-mapper gpxview gpsrecorder gps-data-logger osm2go osmapper gpsdata \
snuggle starhash-enabler shortcutd tar-gnu findutils-gnu tracker-cfg backupmenu \
pidgin pidgin-otr account-plugin-haze purple-extra-protocols pidgin-maemo-docklet \
battery-eye geotoad git

echo "Customize phone"

sudo echo "{$myhostname}" > /etc/hostname
sudo hostname "{$myhostname}"
sudo ln -s /bin/bash4 /bin/bash
sudo mkdir /usr/share/applications/hildon.old

