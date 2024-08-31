package kr.co.inhatcspring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.inhatcspring.service.UserService;
import kr.co.inhatcspring.beans.User;

import javax.servlet.http.HttpSession;

@Controller
public class AuthController {

    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        Model model, HttpSession session) {
        boolean isAuthenticated = userService.authenticate(username, password);
        if (isAuthenticated) {
            session.setAttribute("loggedInUser", username); // 세션에 사용자 정보 저장
            return "redirect:/";  // 로그인 성공 시 메인 페이지로 이동
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login";
        }
    }

    @GetMapping("/register")
    public String registerForm() {
        return "register";
    }

    @PostMapping("/register")
    public String register(@RequestParam("username") String username,
                           @RequestParam("password") String password,
                           @RequestParam("email") String email,
                           Model model) {
        User user = new User(username, password, email);
        userService.register(user);
        return "redirect:/login";  // 회원가입 후 로그인 페이지로 이동
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // 세션 무효화
        return "redirect:/";  // 로그아웃 후 홈 페이지로 이동
    }
}
