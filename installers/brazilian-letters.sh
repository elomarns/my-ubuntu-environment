# Check if the lines already exist in /etc/environment, if not, append them.
grep -qxF "GTK_IM_MODULE=cedilla" /etc/environment || sudo sh -c 'echo "GTK_IM_MODULE=cedilla" >> /etc/environment'
grep -qxF "QT_IM_MODULE=cedilla" /etc/environment || sudo sh -c 'echo "QT_IM_MODULE=cedilla" >> /etc/environment'
