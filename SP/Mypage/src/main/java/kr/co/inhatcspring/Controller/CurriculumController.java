package kr.co.inhatcspring.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.inhatcspring.beans.Curriculum;
import kr.co.inhatcspring.service.CurriculumService;

@Controller
public class CurriculumController {
	
	@Autowired
	private CurriculumService curriculumService;
	
	// 교과과정을 가져오는 메서드 네비게이션 바에서 학년을 선택하게 되면 실행 되는 메서드.
	@GetMapping("/curriculums")	// @RequestParam http요청에서 year라는 매개변수를 받아옴
	public String getCurriculums(@RequestParam(value = "year", required = false) Integer year, Model model) {
		if (year == null) {
			year = 1;	//기본값 설정 (예: 0)
		}
		List<Curriculum> curriculums = curriculumService.getCurriculumsByYear(year);	//데이터베이스에서 해당 학년의 교과 과정을 가져옴
		model.addAttribute("curriculums", curriculums);	// 모델에 교과과정을 추가
		return "Curriculum/curriculums";	//교과과정 페이지를 반환
	}
	
	// 새로운 교과과정 입력 폼을 보여주는 메서드
	@GetMapping("/curriculums/new")
	public String newCurriculumForm(Model model) {
		model.addAttribute("curriculum", new Curriculum());	//새로운 교과과정 객체를 모델에 추가
		return "Curriculum/curriculum_form";	//교과과 입력 폼 페이지를 반환
	}
	
	// 새로운 교과과정을 생성하는 메서드
	@PostMapping("/curriculums")
	public String createCurriculum(Curriculum curriculum) {
		curriculumService.createCurriculum(curriculum);
		return "redirect:/curriculums";
	}

	// 교과과정 수정 폼을 보여주는 메서드
	@GetMapping("/curriculums/edit")
	public String editCurriculumForm(@RequestParam("id") int id, Model model) {
		Curriculum curriculum = curriculumService.getCurriculumById(id);
		if (curriculum == null) {
			// 데이터가 없는 경우에 대한 처리 (예: 404 페이지로 리다이렉션 등)
			return "redirect:/curriculums";	// 데이터가 없으면 교과과정 목록 페이지 리다이렉션
		}
		model.addAttribute("curriculum", curriculum);	//모델에 교과과정을 추가
		return "Curriculum/curriculum_form";			// 교과과정 수정 폼 페이지를 반환
	}
	
	//교과과정을 업데이트하는 메서드
	@PostMapping("/curriculums/update")
	public String updateCurriculum(Curriculum curriculum) {
		curriculumService.updateCurriculum(curriculum);	//교과과정을 업데이트
		return "redirect:/curriculums";	//교과과정 목록 페이지로 리다이렉션
	}

	// 교과과정을 삭제하는 메서드
	@PostMapping("/curriculums/delete")
	public String deleteCurriculum(@RequestParam("curriculumId") List<Integer> curriculumIds) {
		for (int id : curriculumIds) {
			curriculumService.deleteCurriculum(id);		// 교과과정을 id로 삭제
		}
		return "redirect:/curriculums";		// 교과과정 목록 페이지로 리다이렉션
	}


}
