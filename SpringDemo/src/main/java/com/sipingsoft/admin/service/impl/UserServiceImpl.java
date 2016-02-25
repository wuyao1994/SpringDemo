package com.sipingsoft.admin.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Maps;
import com.sipingsoft.admin.dao.IUserDao;
import com.sipingsoft.admin.bean.Page;
import com.sipingsoft.admin.bean.Admin;
import com.sipingsoft.admin.bean.User;
import com.sipingsoft.admin.service.IUserService;

@Service
public class UserServiceImpl implements IUserService{
    @Autowired
    private IUserDao userdao;
    
    @Override
    public void addUser(User user) {
        if(user.getName() == null) {
            return;
        }
        userdao.insertUser(user);
    }

    @Override
    public boolean deleteUser(int id) {
        return userdao.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) {
        return userdao.updateUser(user);
    }

    @Override
    public User getUser(int id) {
        return userdao.getUser(id);
    }

    @Override
    public List<User> getAll() {
        return userdao.getAllUser();
    }

    @Override
    public List<User> searchPage(String name, Page page) {
        Map<String, Object> map = Maps.newHashMap();  
        if (name != null && name.isEmpty()){  
          name = null;  
        }  
        map.put("name", name);  
        map.put("page", page);             //MAP的话加这一句就OK  
        return userdao.searchPage(map);
    }

    @Override
    public Admin findUserByName(String username) {
        return userdao.findUserByName(username);
    }
    
    
}
