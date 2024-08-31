package kr.co.inhatcspring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.inhatcspring.service.FreeBoardService;
import kr.co.inhatcspring.beans.FreeBoardPost;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class FreeBoardController {

    @Autowired
    private FreeBoardService freeBoardService;

    @GetMapping("/communities/freeBoard")
    public String freeBoard(Model model) {
        List<FreeBoardPost> posts = freeBoardService.getAllPosts();
        model.addAttribute("posts", posts);
        return "Communities/freeBoard";
    }

    @GetMapping("/communities/freeBoard/write")
    public String writeForm(HttpSession session) {
        if (session.getAttribute("loggedInUser") == null) {
            return "redirect:/login";
        }
        return "Communities/writePost";
    }

    @PostMapping("/communities/freeBoard/write")
    public String writePost(@RequestParam("title") String title,
                            @RequestParam("content") String content,
                            HttpSession session) {
        String author = (String) session.getAttribute("loggedInUser");
        FreeBoardPost post = new FreeBoardPost();
        post.setTitle(title);
        post.setContent(content);
        post.setAuthor(author);
        freeBoardService.writePost(post);
        return "redirect:/communities/freeBoard";
    }

    @GetMapping("/communities/freeBoard/view")
    public String viewPost(@RequestParam("id") int id, Model model) {
        FreeBoardPost post = freeBoardService.getPostById(id);
        model.addAttribute("post", post);
        return "Communities/viewPost";
    }
}
