package kr.co.inhatcspring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inhatcspring.beans.NoticePost;
import kr.co.inhatcspring.mapper.NoticeMapper;

import java.util.List;

@Service
public class NoticeService {

    @Autowired
    private NoticeMapper noticeMapper;

    public List<NoticePost> getAllPosts() {
        return noticeMapper.getAllPosts();
    }

    public NoticePost getPostById(int id) {
        return noticeMapper.getPostById(id);
    }

    public void writePost(NoticePost post) {
        noticeMapper.insertPost(post);
    }

    public List<NoticePost> getPostsByAuthor(String author) {
        return noticeMapper.getPostsByAuthor(author);
    }
}
