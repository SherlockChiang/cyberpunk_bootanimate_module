SKIPMOUNT=false
#是否安装模块后自动关闭，改为true，安装后不会自动勾选启用
PROPFILE=false
#是否使用common/system.prop文件
POSTFSDATA=false
#是否使用post-fs-data脚本执行文件
ARTSERVICE=false
#是否在开机时候允许允许common/service.sh中脚本

##########################################################################################
# Installation Message
##########################################################################################

# Set what you want to show when installing your mod

print_modname() {
  ui_print "  ################################"
  ui_print "  Cherishe制作,92二改,感谢使用"
  ui_print "  ################################"
  ui_print " 替换开机动画为赛博朋克开机动画 "
 
}

# Permissions
##########################################################################################
#释放文件，普通shell命令
on_install() {
  ui_print "- 正在释放文件"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive  $MODPATH  0  0  0755  0644
  
  #设置权限，基本不要去动
}