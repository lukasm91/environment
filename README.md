# Environment	

Environment used for compilation and running code on various machines. The 
environments are defined as separate machine files with an environment in 
the format "env.(hostname).(environment).sh"

Examples:

- env.daint.pgi.sh
- env.daint.cray.sh
- env.kesch.gnu.sh
- env.kesch.cray.sh
- env.kesch.gnu.4.9.3.sh
- env.keschln-0001.cscs.ch.gnu.sh

## Usage

The script `get_env` will return an environment fitting to the system. By 
default the system selects the `gnu` environment. If no environment file
matches the `hostname` then the default environment is returned 
(`env.default.sh`). 

Arguments:

 - `-h` help
 - `-e` environment. Examples: `-e cray`, `-e gnu.4.9.3`
 - `-l` list supported systems

