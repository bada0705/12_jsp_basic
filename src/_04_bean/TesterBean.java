package _04_bean;

public class TesterBean {

	//테스트 메서드
	public void showData(ProductBean pb) {
		
		System.out.println("pdCd : " + pb.getPdCd());
		System.out.println("pdNm : " + pb.getPdNm());
		System.out.println("deptCd : " + pb.getDeptCd());
		System.out.println("deptNm : " + pb.getDeptNm());
		System.out.println("mgrNm : " + pb.getMgrNm());
		System.out.println();
		
	}
	
}
