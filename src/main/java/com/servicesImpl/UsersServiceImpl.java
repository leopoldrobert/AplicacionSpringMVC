package com.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UsersDao;
import com.entities.Users;
import com.services.UsersService;
 
@Service
public class UsersServiceImpl implements UsersService {
 
    @Autowired
    UsersDao userDao;
 
    public boolean saveOrUpdate(Users users) {
        return userDao.saveOrUpdate(users);
    }
 
    public List<Users> list() {
       
        return userDao.list();
    }
 
    public boolean delete(Users users) {
        
        return userDao.delete(users);
    }
 
}