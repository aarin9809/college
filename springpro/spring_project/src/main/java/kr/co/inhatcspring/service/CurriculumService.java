package kr.co.inhatcspring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.inhatcspring.beans.Curriculum;
import kr.co.inhatcspring.mapper.CurriculumMapper;

@Service
public class CurriculumService {
	
	@Autowired
	private CurriculumMapper curriculumMapper;
	
	// getCurriculums 요청으로 실행
	public List<Curriculum> getCurriculumsByYear(int year) {
		return curriculumMapper.selectCurriculumsByYear(year);
	}
	
	// createCurriculum 요청으로 실행
	public void createCurriculum(Curriculum curriculum) {
		curriculumMapper.insertCurriculum(curriculum);
	}
	
	// editCurriculumForm 요청으로 실행
	public Curriculum getCurriculumById(int id) {
		return curriculumMapper.selectCurriculumById(id);
	}
	
	public void updateCurriculum(Curriculum curriculum) {
		curriculumMapper.updateCurriculum(curriculum);
	}
	
	public void deleteCurriculum(int id) {
		curriculumMapper.deleteCurriculum(id);
	}

}
