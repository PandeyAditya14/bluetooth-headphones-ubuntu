# bluetooth-headphones-connect

This script is created for the user to connect to their headphones with minimal effort.

## Installation

1. First clone the repository using.

  `git clone https://github.com/PandeyAditya14/bluetooth-headphones-ubuntu.git`

2. Then run `bluetoothctl --version` to check if  `bluetoothctl` is installed or not if not then install it by using 

`sudo apt-get install bluetoothctl`

3. To change the execution permission of the script use

`chmod +x ./connect.sh`

## Usage

Simply the script on its own as `./connect.sh` and it will work. But you can also give an argument for a timeout for the device scanning as `./connect.sh 5s`.

## License
[MIT](https://choosealicense.com/licenses/mit/)