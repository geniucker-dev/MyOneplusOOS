DEBUG=@DEBUG@

MODDIR=${0%/*}

if ! pgrep -f "eid_hal_server" >/dev/null 2>&1;then
    LD_LIBRARY_PATH=/vendor/lib64:$MODDIR/eid/lib64 $MODDIR/eid/bin/hw/eid_hal_server &
fi
