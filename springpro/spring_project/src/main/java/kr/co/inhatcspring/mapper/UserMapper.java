package kr.co.inhatcspring.mapper;

import kr.co.inhatcspring.beans.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface UserMapper {

    @Select("SELECT username, password, email FROM Users WHERE username = #{username}")
    User findByUsername(String username);

    @Insert("INSERT INTO Users (username, password, email) VALUES (#{username}, #{password}, #{email})")
    void insertUser(User user);

    @Update("UPDATE Users SET password = #{password} WHERE username = #{username}")
    void updatePassword(User user);
}
