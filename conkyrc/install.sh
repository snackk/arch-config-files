rm $HOME/.config/autostart/Conky.desktop
ln -s $HOME/git/config-files/conkyrc/Conky.desktop $HOME/.config/autostart/Conky.desktop
ln -s $HOME/git/config-files/conkyrc/battery.sh $HOME/.config/autostart/battery.sh
ln -s $HOME/git/config-files/conkyrc/raspberry_temp.sh $HOME/.config/autostart/raspberry_temp.sh
ln -s $HOME/git/config-files/conkyrc/sensors.sh $HOME/.config/autostart/sensors.sh
ln -s $HOME/git/config-files/conkyrc/time.sh $HOME/.config/autostart/time.sh
chmod +x $HOME/.config/autostart/battery.sh $HOME/.config/autostart/raspberry_temp.sh $HOME/.config/autostart/sensors.sh $HOME/.config/autostart/time.sh