package kr.co.inhatcspring.mapper;

import kr.co.inhatcspring.beans.FreeBoardPost;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface FreeBoardMapper {

    @Select("SELECT * FROM free_board ORDER BY created_at DESC")
    List<FreeBoardPost> getAllPosts();

    @Select("SELECT * FROM free_board WHERE id = #{id}")
    FreeBoardPost getPostById(int id);

    @Insert("INSERT INTO free_board (title, content, author, created_at) VALUES (#{title}, #{content}, #{author}, NOW())")
    void insertPost(FreeBoardPost post);

    @Select("SELECT * FROM free_board WHERE author = #{author} ORDER BY created_at DESC")
    List<FreeBoardPost> getPostsByAuthor(String author);
}
