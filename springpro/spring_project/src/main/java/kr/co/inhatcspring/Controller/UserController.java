package kr.co.inhatcspring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.inhatcspring.service.UserService;
import kr.co.inhatcspring.beans.FaqPost;
import kr.co.inhatcspring.beans.FreeBoardPost;
import kr.co.inhatcspring.beans.NoticePost;
import kr.co.inhatcspring.beans.User;
import kr.co.inhatcspring.service.FaqService;
import kr.co.inhatcspring.service.FreeBoardService;
import kr.co.inhatcspring.service.NoticeService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private FreeBoardService freeBoardService;

    @Autowired
    private NoticeService noticeService;

    @Autowired
    private FaqService faqService;

    @GetMapping("/user/info")
    public String userInfo(HttpSession session, Model model) {
        String loggedInUser = (String) session.getAttribute("loggedInUser");
        if (loggedInUser == null) {
            return "redirect:/login";
        }
        model.addAttribute("username", loggedInUser);
        return "user_info";
    }

    @PostMapping("/user/updatePassword")
    public String updatePassword(@RequestParam("currentPassword") String currentPassword,
                                 @RequestParam("newPassword") String newPassword,
                                 @RequestParam("confirmPassword") String confirmPassword,
                                 HttpSession session, Model model) {
        String username = (String) session.getAttribute("loggedInUser");
        if (username == null) {
            return "redirect:/login";
        }

        if (!newPassword.equals(confirmPassword)) {
            model.addAttribute("error", "새 비밀번호가 일치하지 않습니다.");
            return "user_info";
        }

        boolean isUpdated = userService.updatePassword(username, currentPassword, newPassword);
        if (isUpdated) {
            return "redirect:/"; // 비밀번호 변경 성공 시 홈 페이지로 이동
        } else {
            model.addAttribute("error", "현재 비밀번호가 일치하지 않습니다.");
            return "user_info";
        }
    }

    @GetMapping("/user/myPosts")
    public String myPosts(HttpSession session, Model model) {
        String loggedInUser = (String) session.getAttribute("loggedInUser");
        if (loggedInUser == null) {
            return "redirect:/login";
        }

        List<FreeBoardPost> freeBoardPosts = freeBoardService.getPostsByAuthor(loggedInUser);
        List<NoticePost> noticePosts = noticeService.getPostsByAuthor(loggedInUser);
        List<FaqPost> faqPosts = faqService.getPostsByAuthor(loggedInUser);

        model.addAttribute("freeBoardPosts", freeBoardPosts);
        model.addAttribute("noticePosts", noticePosts);
        model.addAttribute("faqPosts", faqPosts);

        return "myPosts";
    }
}
