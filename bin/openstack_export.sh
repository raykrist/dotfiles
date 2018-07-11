# $1 = <region>
# $2 = <cloud>
openrc_export() {
  if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    exit 0
  fi
  if [ $# -eq 2 ]; then
    cloud=$2
  else
    cloud='private'
  fi
  export OS_REGION_NAME=$1
  export OS_CLOUD=$cloud
}
