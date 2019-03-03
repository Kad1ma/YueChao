package cn.org.hrbust.dao;

import java.util.List;

public interface Dal {
    <T> Integer persist(T var1);

    <T> T queryByObject(Class<?> var1, Integer var2);

    @SuppressWarnings("rawtypes")
    List queryList(String var1, Object... var2);

    @SuppressWarnings("rawtypes")
    List queryListByPage(String var1, Integer... var2);
}