set -e

NCO=1.5
NCL=1
THETA=180  # deg
L=100  # um
WIDTH=3  # um
HEIGHT=2  # um
WAVELENGTH=1.55  # um
BANDWIDTH=0.01 # um
RESOLUTION=4

python setup.py build_ext --inplace
mpirun -n 4 python run_meep.py $NCO $NCL $THETA $L $WIDTH $HEIGHT $WAVELENGTH \
    $RESOLUTION --bandwidth $BANDWIDTH
