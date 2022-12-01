package findBirth;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.TimeUnit;


public class FindBirthHandler {
	ArrayList<User> list = new ArrayList<User>();
	
	public void setDummy() {
		if(list.isEmpty()) {
			list.add(new User("김성수", "001210"));
		}
	}
	
	
	public int getUntilDate(User user) {
		String submsg = user.getSecurityNumber();
		submsg = "2022" + submsg.substring(2 , 6);
		
		long diff = 0;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String tomsg = sdf.format(new Date());
//		System.out.println(tomsg);
//		System.out.println(submsg);
		int userbirth = Integer.parseInt(submsg);
		int today = Integer.parseInt(tomsg);
		String overtoday = (userbirth + 10000) + "";
//		System.out.println(overtoday);
		if(today > userbirth) {
			try {
				Date date1 = sdf.parse(overtoday);
				Date date2 = sdf.parse(tomsg);
				
	            // 두 날짜의 차이를 분 단위로 가져옵니다.
	            long elapsedms = date1.getTime() - date2.getTime();
	            diff = TimeUnit.MINUTES.convert(elapsedms, TimeUnit.MILLISECONDS);
//	            System.out.println(diff);
			} catch (java.text.ParseException e) {
				e.printStackTrace();
			}
		} else {
			try {
				Date date1 = sdf.parse(submsg);
				Date date2 = sdf.parse(tomsg);
				
	            // 두 날짜의 차이를 분 단위로 가져옵니다.
	            long elapsedms = date1.getTime() - date2.getTime();
	            diff = TimeUnit.MINUTES.convert(elapsedms, TimeUnit.MILLISECONDS);
//	            System.out.println(diff);
			} catch (java.text.ParseException e) {
				e.printStackTrace();
			}
		}
	
		
		int result = ((int)diff) / 24 / 60;
		
		return result;
	}
	
	
//	public static void main(String[] args) {
//		FindBirthHandler handler = new FindBirthHandler();
//		handler.setDummy();
//		int tmp = handler.getUntilDate(handler.list.get(0));
//		System.out.println(tmp);
//	}
}
