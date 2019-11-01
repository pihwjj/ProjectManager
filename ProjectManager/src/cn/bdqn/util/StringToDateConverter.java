package cn.bdqn.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 * 时间对象自定义转换器
 * @author PC
 *
 */
public class StringToDateConverter implements Converter<String, Date> {

	private String datePattern;
	public StringToDateConverter(String datePattern){
		this.datePattern = datePattern;
	}
	
	@Override
	public Date convert(String s) {
		Date date = null;
		try {
			date = new SimpleDateFormat(datePattern).parse(s);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

}
