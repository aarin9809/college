package kr.co.inhatcspring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.inhatcspring.service.NoticeService;
import kr.co.inhatcspring.beans.NoticePost;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    @GetMapping("/communities/notice")
    public String noticeBoard(Model model) {
        List<NoticePost> posts = noticeService.getAllPosts();
        model.addAttribute("posts", posts);
        return "Communities/noticeBoard";
    }

    @GetMapping("/communities/notice/write")
    public String writeForm(HttpSession session) {
        if (session.getAttribute("loggedInUser") == null) {
            return "redirect:/login";
        }
        return "Communities/writeNotice";
    }

    @PostMapping("/communities/notice/write")
    public String writePost(@RequestParam("title") String title,
                            @RequestParam("content") String content,
                            HttpSession session) {
        String author = (String) session.getAttribute("loggedInUser");
        NoticePost post = new NoticePost();
        post.setTitle(title);
        post.setContent(content);
        post.setAuthor(author);
        noticeService.writePost(post);
        return "redirect:/communities/notice";
    }

    @GetMapping("/communities/notice/view")
    public String viewPost(@RequestParam("id") int id, Model model) {
        NoticePost post = noticeService.getPostById(id);
        model.addAttribute("post", post);
        return "Communities/viewNotice";
    }
}
