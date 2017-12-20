How to have a self running startup script --KTB

1. Take the init-ip-tables template and paste it in /etc/init.d/
2. Choose the working directory and commands correctly
3. Add the command to /usr/bin/ (This shoukld be te same command in the init.d script cmd="")
4. Make sure all bin and shell scripts are executables
5. sudo update-rc.d <NAME OF SCRIPT IN INIT.D> defaults
6. Add script of Denyhosts as well the same way

Done :)
