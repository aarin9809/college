package kr.co.inhatcspring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.inhatcspring.service.CurriculumService;

@Controller
public class CurriculumController {

    @Autowired
    private CurriculumService curriculumService;

    @GetMapping("/curriculums/1stYear")
    public String getCurriculumsForFirstYear(Model model) {
        //model.addAttribute("curriculums", curriculumService.getCurriculumsByYear(1));
        return "Curriculum/grade1";
    }

    @GetMapping("/curriculums/2ndYear")
    public String getCurriculumsForSecondYear(Model model) {
        //model.addAttribute("curriculums", curriculumService.getCurriculumsByYear(2));
        return "Curriculum/grade2";
    }

    @GetMapping("/curriculums/3rdYear")
    public String getCurriculumsForThirdYear(Model model) {
        //model.addAttribute("curriculums", curriculumService.getCurriculumsByYear(3));
        return "Curriculum/grade3";
    }

    @GetMapping("/curriculums/specialization")
    public String getCurriculumsForAdvanced(Model model) {
        //model.addAttribute("curriculums", curriculumService.getCurriculumsByYear(4));
        return "Curriculum/advanced";
    }
}
