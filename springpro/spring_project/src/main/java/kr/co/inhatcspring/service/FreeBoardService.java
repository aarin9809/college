package kr.co.inhatcspring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inhatcspring.beans.FreeBoardPost;
import kr.co.inhatcspring.mapper.FreeBoardMapper;

import java.util.List;

@Service
public class FreeBoardService {

    @Autowired
    private FreeBoardMapper freeBoardMapper;

    public List<FreeBoardPost> getAllPosts() {
        return freeBoardMapper.getAllPosts();
    }

    public FreeBoardPost getPostById(int id) {
        return freeBoardMapper.getPostById(id);
    }

    public void writePost(FreeBoardPost post) {
        freeBoardMapper.insertPost(post);
    }

    public List<FreeBoardPost> getPostsByAuthor(String author) {
        return freeBoardMapper.getPostsByAuthor(author);
    }
}
