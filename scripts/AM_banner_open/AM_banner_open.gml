///@desc 배너 광고를 생성하는 스크립트 ( 인터넷 미연결시 -1 반환 ) 
///@args x 배너광고의 x위치
///@args y 배너광고의 y위치

//네트워크에 연결되어 있다면 실행
if ( os_is_network_connected() )
{
//	GoogleMobileAds_AddBannerAt( (global.AD_MANAGER).AM_banner_id , GoogleMobileAds_Banner , argument[0] , argument[1] );
	
	//배너광고의 현재상태 - 열림
//	(global.AD_MANAGER).banner_state = true;
}
//네트워크에 연결되어 있지 않다면
else
{
	return -1;
}
