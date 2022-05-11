///@desc 전면광고룰 호출하는 스크립트 ( 인터넷 미연결시 -1 , 광고 준비가 아직 안됬다면 0을 반환 )

/* 인터넷 연결 확인 */
if ( os_is_network_connected() )
{
	
	/* 광고가 준비되었는지 확인 */
	#region
	
	//준비되었다면 광고 실행
	if ( (global.AD_MANAGER).interstitial_loaded )
	{
		(global.AD_MANAGER).interstitial_loaded = false;
		GoogleMobileAds_ShowInterstitial();
		
		return 1;
		exit;
	}
	/* 준비가 안되었다면 광고 로드 */
	else
	{
		return 0;
		exit;
	}
	
	#endregion
}
else
{
	return -1;	
}