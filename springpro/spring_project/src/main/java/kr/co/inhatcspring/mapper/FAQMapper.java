package kr.co.inhatcspring.mapper;

import kr.co.inhatcspring.beans.FaqPost;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface FaqMapper {

    @Select("SELECT * FROM faq_board ORDER BY created_at DESC")
    List<FaqPost> getAllPosts();

    @Select("SELECT * FROM faq_board WHERE id = #{id}")
    FaqPost getPostById(int id);

    @Insert("INSERT INTO faq_board (question, answer, author, created_at) VALUES (#{question}, #{answer}, #{author}, NOW())")
    void insertPost(FaqPost post);

    @Select("SELECT * FROM faq_board WHERE author = #{author} ORDER BY created_at DESC")
    List<FaqPost> getPostsByAuthor(String author);
}
