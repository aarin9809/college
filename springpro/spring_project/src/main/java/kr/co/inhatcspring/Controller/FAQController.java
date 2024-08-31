package kr.co.inhatcspring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.inhatcspring.beans.FaqPost;
import kr.co.inhatcspring.service.FaqService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class FaqController {

    @Autowired
    private FaqService faqService;

    @GetMapping("/communities/faq")
    public String faqBoard(Model model) {
        List<FaqPost> posts = faqService.getAllPosts();
        model.addAttribute("posts", posts);
        return "Communities/faqBoard";
    }

    @GetMapping("/communities/faq/write")
    public String writeForm(HttpSession session) {
        if (session.getAttribute("loggedInUser") == null) {
            return "redirect:/login";
        }
        return "Communities/writeFaq";
    }

    @PostMapping("/communities/faq/write")
    public String writePost(@RequestParam("question") String question,
                            @RequestParam("answer") String answer,
                            HttpSession session) {
        String author = (String) session.getAttribute("loggedInUser");
        FaqPost post = new FaqPost();
        post.setQuestion(question);
        post.setAnswer(answer);
        post.setAuthor(author);
        faqService.writePost(post);
        return "redirect:/communities/faq";
    }

    @GetMapping("/communities/faq/view")
    public String viewPost(@RequestParam("id") int id, Model model) {
        FaqPost post = faqService.getPostById(id);
        model.addAttribute("post", post);
        return "Communities/viewFaq";
    }
}
