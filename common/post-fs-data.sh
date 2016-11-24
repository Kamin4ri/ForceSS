#!/system/bin/sh

# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# Delete xt1033 props. Do this twice for each prop.
./data/magisk/resetprop --delete "ro.telephony.ril.config";
./data/magisk/resetprop --delete "persist.radio.msim.stackid_0";
./data/magisk/resetprop --delete "persist.radio.msim.stackid_1";
./data/magisk/resetprop --delete "persist.radio.dont_use_dsd";
./data/magisk/resetprop --delete "persist.radio.plmn_name_cmp";
./data/magisk/resetprop --delete "ro.telephony.ril.config";
./data/magisk/resetprop --delete "persist.radio.msim.stackid_0";
./data/magisk/resetprop --delete "persist.radio.msim.stackid_1";
./data/magisk/resetprop --delete "persist.radio.dont_use_dsd";
./data/magisk/resetprop --delete "persist.radio.plmn_name_cmp";

# Set xt1032 props
./data/magisk/resetprop "ro.boot.radio" "0x1";
./data/magisk/resetprop "ro.product.device" "falcon_umts";
./data/magisk/resetprop "ro.build.description" "falcon_retuglb-user 5.1 LPB23.13-58 58 release-keys";
./data/magisk/resetprop "ro.build.fingerprint" "motorola/falcon_retuglb/falcon_umts:5.1/LPB23.13-58/58:user/release-keys";
./data/magisk/resetprop "ro.build.product" "falcon_umts";
./data/magisk/resetprop "ro.mot.build.customerid" "retusa_glb";
./data/magisk/resetprop "ro.telephony.default_network" "0";
./data/magisk/resetprop "persist.radio.multisim.config" "";

# Delete xt1033 props again. Do this twice more for each prop.
# We need to be *very* aggressive here.
./data/magisk/resetprop --delete "ro.telephony.ril.config";
./data/magisk/resetprop --delete "persist.radio.msim.stackid_0";
./data/magisk/resetprop --delete "persist.radio.msim.stackid_1";
./data/magisk/resetprop --delete "persist.radio.dont_use_dsd";
./data/magisk/resetprop --delete "persist.radio.plmn_name_cmp";
./data/magisk/resetprop --delete "ro.telephony.ril.config";
./data/magisk/resetprop --delete "persist.radio.msim.stackid_0";
./data/magisk/resetprop --delete "persist.radio.msim.stackid_1";
./data/magisk/resetprop --delete "persist.radio.dont_use_dsd";
./data/magisk/resetprop --delete "persist.radio.plmn_name_cmp";