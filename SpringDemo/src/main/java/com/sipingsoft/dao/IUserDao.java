package com.sipingsoft.dao;

import java.util.List;
import java.util.Map;

import com.sipingsoft.pojo.Admin;
import com.sipingsoft.pojo.User;

public interface IUserDao {
    public User getUser(int id);
    
    public List<User> getAllUser();
    
    public boolean deleteUser(int id);
    
    public void insertUser(User user);
    
    public boolean updateUser(User user);
    
    public List<User> searchPage(Map<String, Object> map);
    
    public Admin findUserByName(String username);
}
