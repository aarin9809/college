package kr.co.inhatcspring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.inhatcspring.beans.User;
import kr.co.inhatcspring.mapper.UserMapper;

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    public boolean authenticate(String username, String password) {
        User user = userMapper.findByUsername(username);
        return user != null && user.getPassword().equals(password);
    }

    public void register(User user) {
        userMapper.insertUser(user);
    }

    public boolean updatePassword(String username, String currentPassword, String newPassword) {
        User user = userMapper.findByUsername(username);
        if (user != null && user.getPassword().equals(currentPassword)) {
            user.setPassword(newPassword);
            userMapper.updatePassword(user);
            return true;
        }
        return false;
    }
}
