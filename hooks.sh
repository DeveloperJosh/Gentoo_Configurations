if[ -d "${EBUILD_PHASE}" == "preinst"]; then 
  mount -o remount,exec /tmp
  mount -o remount,exec /var
fi

if[ -d "${EBUILD_PHASE}" == "postinst"]; then
  mount -o remount,noexec /tmp
  mount -o remount,noexec /var
fi
