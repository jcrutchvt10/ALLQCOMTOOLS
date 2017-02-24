function j(){
    local msg_path=/tmp/ncbus_msg

    if [ ! -e $msg_path ]; then
        echo "not msg file"
        exit 1
    fi

    local tag_path=`cat $msg_path | grep \[JUMP\] | tail -1 | awk '{print $3}'`
    cd $tag_path
}