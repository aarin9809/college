package kr.co.inhatcspring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inhatcspring.beans.FaqPost;
import kr.co.inhatcspring.mapper.FaqMapper;

import java.util.List;

@Service
public class FaqService {

    @Autowired
    private FaqMapper faqMapper;

    public List<FaqPost> getAllPosts() {
        return faqMapper.getAllPosts();
    }

    public FaqPost getPostById(int id) {
        return faqMapper.getPostById(id);
    }

    public void writePost(FaqPost post) {
        faqMapper.insertPost(post);
    }

    public List<FaqPost> getPostsByAuthor(String author) {
        return faqMapper.getPostsByAuthor(author);
    }
}
