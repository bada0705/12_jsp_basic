package _07_el_jstl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _04_bean.ProductBean;

@WebServlet("/JstlEx15_정답예시")
public class JstlEx15_정답예시 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<ProductBean> productList = new ArrayList<ProductBean>();
		
		for (int i = 1; i < 10; i++) {
			ProductBean product = new ProductBean();
			product.setPdCd("P00" + i);
			product.setPdNm("기계식키보드" + i);
			product.setDeptCd("dept"+i);
			product.setDeptNm("생산부서"+i);
			product.setMgrNm("홍길동"+i);
			productList.add(product);
		}
		
		//request.setAttribute("productList", productList);
		request.setAttribute("productList", null);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_el_jstl/jstlEx15_정답예시.jsp"); 
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
