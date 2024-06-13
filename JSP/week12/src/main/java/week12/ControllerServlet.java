package week12;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

/**
 * Servlet implementation class ControllerServlet
 */

@WebServlet(urlPatterns = "*.do",
		initParams = {@WebInitParam(name = "config",
						value = "/WEB-INF/commandHandler.properties")})
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//<커맨드, 핸들러클래스> 매핑 정보 저장
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
	
	//서블릿을 생성하고 초기화할 때 가장 먼저 호출되는 init() 메소드를 이용
	public void init(ServletConfig config) throws  ServletException{
		
		//초기 파라미터 값을 읽기
		String configFile = config.getInitParameter("config");
		String configFilePath = config.getServletContext().getRealPath(configFile);
		
		Properties prop = new Properties();
		
		//설정 파일을 prop 객체 로드
		try (FileInputStream fis = new FileInputStream(configFilePath)){
			prop.load(fis);
		}catch (Exception e) {
			throw new ServletException(e);
		}

		//설정 파일을 하나씩 읽어서 키값(호출 패턴, hello.do)과 실행 핸들러명을 읽어 맵에 저장
		Iterator<Object> keyIter = prop.keySet().iterator();
		while(keyIter.hasNext()) {
			//키 = hello.do
			String command = (String) keyIter.next();
			
			//클래스 문자열 => 실제 인스턴스 객체로 생성하는 단계
			String handlerClassName = prop.getProperty(command);
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();
				
				commandHandlerMap.put(command, handlerInstance);
			} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
				throw new ServletException();
			}
		}
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);

	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//비즈니스 로직을 처리하는 부분
		//request.getRequestURI() => /week11/hello.do
		String command = request.getRequestURI();
		
		//getContextPath() => /week11
		command = command.substring(request.getContextPath().length()+1);
		//위 명령문을 실행 한 결과 command = hello.do
		
		//인터페이스 변수 선언
		//인터페이스 변수 = 구현 객체
		CommandHandler handler = commandHandlerMap.get(command);

		String viewPage = null;
		
		//인터페이스의 다형성
		viewPage = handler.process(request, response);

		//서블릿에서 다음 페이지로 데이터 넘기는 방법
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/" + viewPage + ".jsp");
		rd.forward(request, response);
		
	}
}
