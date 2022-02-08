package com.bsj.delight.common.mail;

import java.util.Date;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.bsj.delight.common.code.Config;
import com.bsj.delight.common.code.ErrorCode;
import com.bsj.delight.common.exception.HandlableException;


@Component
public class MailSender {

	
	JavaMailSender mailSender;
	
	public MailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public void send(String to, String subject, String htmlTxt) {
		
		MimeMessage msg = mailSender.createMimeMessage();
		
        try {
			msg.setFrom(Config.COMPANY_EMAIL.DESC);
	        msg.setRecipients(Message.RecipientType.TO, to);
	        msg.setSubject(subject);
	        msg.setSentDate(new Date());
	        msg.setText(htmlTxt,"UTF-8","html");
	        mailSender.send(msg);
	        
		} catch (MessagingException e) {
			throw new HandlableException(ErrorCode.MAIL_SEND_FAIL_ERROR);
		}
	}
	
}
