package emp.cmm.scheduler;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class Scheduler {

	/**
	 * 1. 매일 새벽 0시에 자동으로 실행되는 스케쥴러
	 */
	// * 을 입력할경우 모두(항상)으로 설정함.
	//                 초  분  시  일  월  요일
	@Scheduled(cron ="0 0/1 * * * *")
	 public void ANCUpdate() {
		 System.out.println("스케쥴러 실행");
		 
	 }
}
