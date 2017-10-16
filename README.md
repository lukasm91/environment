# Environment	

Environment used for compilation and running code on various machines. The 
environments are defined as separate machine files with an environment in 
the format "env.(hostname).(environment).sh"

## Usage

The script `get_env` will return an environment fitting to the system. By 
default the system selects the `gnu` environment. If no environment file
matches the `hostname` then the default environment is returned 
(`env.default.sh`). 

Arguments:

 - `-h` help
 - `-e` environment. Examples: `-e cray`, `-e gnu.4.9.3`
 - `-l` list supported systems

## Examples

Let's assume the following files are available in the environment folder:

- env.daint.pgi.sh
- env.daint.cray.sh
- env.kesch.gnu.sh
- env.kesch.cray.sh
- env.kesch.gnu.4.9.3.sh

And let's assume you are on host `daint` and execute the `get_env` script:

- Requesting `./get_env` will return `env.daint.gnu.sh`
- Requesting `./get_env -e pgi` will return `env.daint.pgi.sh`

If you are on `kesch`:

- Requesting `./get_env` will return `env.kesch.gnu.sh`
- Requesting `./get_env -e gnu.4.9.3` will return `env.kesch.gnu.4.9.3.sh`


