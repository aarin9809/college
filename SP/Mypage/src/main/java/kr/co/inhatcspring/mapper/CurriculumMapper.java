package kr.co.inhatcspring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.inhatcspring.beans.Curriculum;

@Mapper
public interface CurriculumMapper {
	
	//특정 학년을 찾음
	@Select("SELECT * FROM curriculum WHERE year = #{year}")
	List<Curriculum> selectCurriculumsByYear(int year);
	
	@Select("SELET * FROM curriculum WHERE id = #{id}")
	Curriculum selectCurriculumById(int id);
	
	//JSP에서 입력된 정보를 컨트롤러 -> 서비스 -> mapper -> DB로 전달 값 추가
	@Insert("INSERT INTO curriculum (category, course_type, title, semester1, semester2, year) VALUES (#{category}, #{courseType}, #{title}, #{semester1}, #{semester2}, #{year})")
	void insertCurriculum(Curriculum curriculum);
	
	//수정된 값을 받아서 업데이트
	// 쿼리문 수정해야함*******************
	@Update("UPDATE curriculum SET category = #{category}, course_type = #{courseType}, title = #{title}, semester1 = #{semester1}, semester2 = #{semester2}, year = #{year}")
	void updateCurriculum(Curriculum curriculum);
	
	//선택된 id값을 받아와서 삭제함
	@Delete("DELETE FROM curriculum WHERE id = #{id}")
	void deleteCurriculum(int id);

}
