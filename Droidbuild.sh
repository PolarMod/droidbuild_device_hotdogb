setup_target hotdogb

target_hotdogb() {
  LOCAL_PATH=$(dirname $BASH_SOURCE)
  include $BASEDIR/droidbuild/build_vars.sh
  TARGET_NEEDS_RESYNC=true
  TARGET_LOCAL_MANIFESTS+=$LOCAL_PATH/manifests/hotdogb.xml
  TARGET_ARCH_BITNESS=64
  TARGET_CODENAME="hotdogb"
  TARGET_FULLNAME="OnePlus 7T"
  TARGET_BUILDTYPE="userdebug"
  TARGET_SIGNED_BUILD=true
  TARGET_HOSTS_CAT=2
  TARGET_SUPPORTS_GMSCOMPAT=1
  target_build-device
}

droidbuild_module() {
  # Dummy
  echo 1 >/dev/null
}
