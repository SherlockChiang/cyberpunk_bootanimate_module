#uninstall running

remove_cache()
{
    local target_path="$1"
    for target_file in $(find $target_path -type f -iname '*moralnormcharge*') ; do
        rm -f $target_file
    done
}

drc="/data/resource-cache"
dpc="/data/system/package_cache"
remove_cache $drc
remove_cache $dpc

if [[ $(find $drc $dpc -type f -iname '*moralnormcharge*') ]] ; then
    rm -rf $drc
    rm -rf $dpc
fi
