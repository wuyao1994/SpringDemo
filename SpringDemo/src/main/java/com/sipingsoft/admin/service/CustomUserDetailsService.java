package com.sipingsoft.admin.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.sipingsoft.admin.bean.Admin;
import com.sipingsoft.admin.dao.IUserDao;

/** 
 * 一个自定义的service用来和数据库进行操作. 即以后我们要通过数据库保存权限.则需要我们继承UserDetailsService 
 *  
 * @author 
 *  
 */  
public class CustomUserDetailsService implements UserDetailsService {  
  
    protected static Logger logger = Logger.getLogger("service");  
    
    @Resource
    private IUserDao userDAO;  
    
    public void setUserDAO(IUserDao userDAO) {
        this.userDAO = userDAO;
    }

    public UserDetails loadUserByUsername(String username)  
            throws UsernameNotFoundException, DataAccessException {  
        UserDetails user = null;  
        
        try {
            Admin admin = userDAO.findUserByName(username);  
            user = new User(admin.getUsername(), admin.getPassword()  
                    .toLowerCase(), true, true, true, true,  
                    getAuthorities(admin.getAccess()));
        } catch (Exception e) {
            e.printStackTrace();
        }  
  
        
        return user;  
    }  
  
    /** 
     * 获得访问角色权限 
     *  
     * @param access 
     * @return 
     */ 
    @SuppressWarnings("deprecation")  
    public Collection<GrantedAuthority> getAuthorities(Integer access) {  
  
        List<GrantedAuthority> authList = new ArrayList<GrantedAuthority>(2);  
        // 所有的用户默认拥有ROLE_USER权限  
        logger.debug("Grant ROLE_USER to this user");  
        authList.add(new GrantedAuthorityImpl("ROLE_USER"));  
  
        // 如果参数access为1.则拥有ROLE_ADMIN权限  
        if (access.compareTo(1) == 0) {  
            logger.debug("Grant ROLE_ADMIN to this user");  
            authList.add(new GrantedAuthorityImpl("ROLE_ADMIN"));  
        }  
        return authList;  
    }  
}  