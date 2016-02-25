package admin.service;

import java.util.List;

import web.bean.Page;
import admin.bean.Admin;
import admin.bean.User;

public interface IUserService {
    public void addUser(User user);
    
    public boolean deleteUser(int id);
    
    public boolean updateUser(User user);
    
    public User getUser(int id);
    
    public List<User> getAll();
    
    public List<User> searchPage(String name, Page page);
    
    public Admin findUserByName(String username);
}
