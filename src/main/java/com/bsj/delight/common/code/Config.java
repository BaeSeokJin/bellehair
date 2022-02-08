package com.bsj.delight.common.code;

public enum Config {
	
	//DOMAIN("https://pclass.ga"),
	DOMAIN("http://localhost:9090"),
	COMPANY_EMAIL("happyshiptest@gmail.com"),
	SMTP_AUTHENTICATION_ID("happyshiptest@gmail.com"),
	SMTP_AUTHENTICATION_PASSWORD("test11!!"),
	//UPLOAD_PATH("C:\\CODE\\before\\"),
	UPLOAD_PATH("C:\\CODE\\");

	public final String DESC;
	
	Config(String desc) {
		this.DESC = desc;
	}

	
	
}
