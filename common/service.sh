#!/system/bin/sh

# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# Delete xt1033 props
proplist="ro.telephony.ril.config
persist.radio.msim.stackid_0
persist.radio.msim.stackid_1
persist.radio.dont_use_dsd
persist.radio.plmn_name_cmp";
for prop in $proplist; do
	until [[ "$(getprop $prop)" = "" ]]; do
		./data/magisk/resetprop --delete $prop;
	done;
done;