package pl.app.elearning.i18n;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.ResourceBundle;

import pl.app.elearning.support.RegularExpression;

public class I18n {

	private static final String language = "pl";
	private static final String languageRegion = "PL";
	private static ResourceBundle resourceBundle = null;

	static {
		Locale locale = new Locale(language, languageRegion);
		resourceBundle = ResourceBundle.getBundle("messages", locale);
	}

	public static String getKeyValue(String key) {
		try {
			return new String(resourceBundle.getString(key).getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new AssertionError("UTF-8 not supported");
		}
	}

	public static List<String> getKeyValueAsList(String key) {
		List<String> elements = new ArrayList<String>();
		try {
			String keyValue = new String(resourceBundle.getString(key).getBytes("ISO-8859-1"), "UTF-8");
			elements = Arrays.asList(keyValue.split(RegularExpression.COMA_BETWEEN_SPACES));
		} catch (UnsupportedEncodingException e) {
			throw new AssertionError("UTF-8 not supported");
		}
		return elements;
	}
}
