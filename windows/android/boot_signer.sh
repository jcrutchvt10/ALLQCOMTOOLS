#! /bin/sh
# Verify boot.img for user build

SCRIPT_DIR=`dirname "$0"`
echo "$SCRIPT_DIR"

usage() {
cat <<USAGE
#build\target\product\security
Usage: boot_signer -k key_dir boot.img

-k to your key_dir

if no output file, use default ./img2ota.zip as output file

USAGE
}
while getopts "hk:" arg; do
    case "$arg" in
        h) usage; exit 0;;
        k) KEYDIR="$OPTARG";;
    esac
done
shift $(($OPTIND - 1))
if  [ ! -n "$KEYDIR" ] ;then
    usage; exit 1;
fi
IMAGE=$@

java -Xmx512M -jar "$SCRIPT_DIR"/BootSignature.jar /boot $IMAGE $KEYDIR/verity.pk8 $KEYDIR/verity.x509.pem $IMAGE