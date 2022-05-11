///@desc 리워드 광고를 호출하는 스크립트 ( 인터넷 미연결시 -1 , 아직 로드가 안됬다면 0 반환 )
///@args present 광고시청완료시 실행할 스크립트
///@args end 광고가 종료됫을때 실행할 스크립트


/* 인터넷 연결 확인 */
//if ( os_is_network_connected() )
//{
	
	/* 광고가 준비되었는지 확인 */
//	#region
	
	//준비되었다면 광고 실행
//	if ( (global.AD_MANAGER).rewarded_loaded )
//	{
		
//		with( global.AD_MANAGER )
//		{
//			rewarded_loaded = false;
		
			//스크립트 넣기
//			rewarded_present = argument[0];
//			rewarded_end = argument[1];
		
//			GoogleMobileAds_ShowRewardedVideo();
//		}
		
//		return 1;
//		exit;
//	}
	/* 준비가 안되었다면 광고 로드 */
//	else
//	{
//		return 0;
//		exit;
//	}
	
//	#endregion
//}
//else
//{
//	return -1;	
//}
