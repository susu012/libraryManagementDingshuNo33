package com.jxut.dingshuNo33.pojo;

import java.util.List;
import java.util.ArrayList;

public class SysMenu {

        private static final long serialVersionUID = 1L;

        /** 菜单ID */
        private Long menuId;

        /** 菜单名称 */
        private String menuName;

        /** 父菜单名称 */
        private String parentName;

        /** 父菜单ID */
        private Long parentId;

        /** 显示顺序 */
        private String orderNum;

        /** 菜单URL */
        private String url;

        /** 打开方式（menuItem页签 menuBlank新窗口） */
        private String target;

        /** 类型（M目录 C菜单 F按钮） */
        private String menuType;

        /** 菜单状态（0显示 1隐藏） */
        private String visible;

        /** 是否刷新（0刷新 1不刷新） */
        private String isRefresh;

        /** 权限字符串 */
        private String perms;

        /** 菜单图标 */
        private String icon;

        /** 子菜单 */
        private List<SysMenu> children = new ArrayList<SysMenu>();

        public Long getMenuId()
        {
            return menuId;
        }

        public void setMenuId(Long menuId)
        {
            this.menuId = menuId;
        }


        public String getMenuName()
        {
            return menuName;
        }

        public void setMenuName(String menuName)
        {
            this.menuName = menuName;
        }

        public String getParentName()
        {
            return parentName;
        }

        public void setParentName(String parentName)
        {
            this.parentName = parentName;
        }

        public Long getParentId()
        {
            return parentId;
        }

        public void setParentId(Long parentId)
        {
            this.parentId = parentId;
        }


        public String getOrderNum()
        {
            return orderNum;
        }

        public void setOrderNum(String orderNum)
        {
            this.orderNum = orderNum;
        }


        public String getUrl()
        {
            return url;
        }

        public void setUrl(String url)
        {
            this.url = url;
        }

        public String getTarget()
        {
            return target;
        }

        public void setTarget(String target)
        {
            this.target = target;
        }


        public String getMenuType()
        {
            return menuType;
        }

        public void setMenuType(String menuType)
        {
            this.menuType = menuType;
        }

        public String getVisible()
        {
            return visible;
        }

        public void setVisible(String visible)
        {
            this.visible = visible;
        }

        public String getIsRefresh()
        {
            return isRefresh;
        }

        public void setIsRefresh(String isRefresh)
        {
            this.isRefresh = isRefresh;
        }

        public String getPerms()
        {
            return perms;
        }

        public void setPerms(String perms)
        {
            this.perms = perms;
        }

        public String getIcon()
        {
            return icon;
        }

        public void setIcon(String icon)
        {
            this.icon = icon;
        }

        public List<SysMenu> getChildren()
        {
            return children;
        }

        public void setChildren(List<SysMenu> children)
        {
            this.children = children;
        }

    @Override
    public String toString() {
        return "SysMenu{" +
                "menuId=" + menuId +
                ", menuName='" + menuName + '\'' +
                ", parentName='" + parentName + '\'' +
                ", parentId=" + parentId +
                ", orderNum='" + orderNum + '\'' +
                ", url='" + url + '\'' +
                ", target='" + target + '\'' +
                ", menuType='" + menuType + '\'' +
                ", visible='" + visible + '\'' +
                ", isRefresh='" + isRefresh + '\'' +
                ", perms='" + perms + '\'' +
                ", icon='" + icon + '\'' +
                ", children=" + children +
                '}';
    }
}


