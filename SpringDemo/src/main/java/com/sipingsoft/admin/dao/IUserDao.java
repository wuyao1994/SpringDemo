package com.sipingsoft.admin.dao;

import java.util.List;
import java.util.Map;

import com.sipingsoft.admin.bean.Admin;
import com.sipingsoft.admin.bean.User;

public interface IUserDao {
    public User getUser(int id);
    
    public List<User> getAllUser();
    
    public boolean deleteUser(int id);
    
    public void insertUser(User user);
    
    public boolean updateUser(User user);
    
    public List<User> searchPage(Map<String, Object> map);
    
    public Admin findUserByName(String username);
}
