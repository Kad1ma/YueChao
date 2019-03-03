package cn.org.hrbust.util;

public abstract class StringUtils {
	private StringUtils() {
		throw new IllegalAccessError("SringUtils");
	}

	public static boolean isEmpty(Object... parames) {
		Object[] var4 = parames;
		int var3 = parames.length;

		for (int var2 = 0; var2 < var3; ++var2) {
			Object object = var4[var2];
			if (org.springframework.util.StringUtils.isEmpty(object)) {
				return true;
			}
		}

		return false;
	}
}