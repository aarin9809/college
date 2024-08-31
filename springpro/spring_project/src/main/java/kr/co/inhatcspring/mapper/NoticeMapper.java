package kr.co.inhatcspring.mapper;

import kr.co.inhatcspring.beans.NoticePost;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface NoticeMapper {

    @Select("SELECT * FROM notice_board ORDER BY created_at DESC")
    List<NoticePost> getAllPosts();

    @Select("SELECT * FROM notice_board WHERE id = #{id}")
    NoticePost getPostById(int id);

    @Insert("INSERT INTO notice_board (title, content, author, created_at) VALUES (#{title}, #{content}, #{author}, NOW())")
    void insertPost(NoticePost post);

    @Select("SELECT * FROM notice_board WHERE author = #{author} ORDER BY created_at DESC")
    List<NoticePost> getPostsByAuthor(String author);
}
