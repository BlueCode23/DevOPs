package lu.uni.e4l.platform.service;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import static org.junit.Assert.*;

public class UnitTest {

    @Test
    public void testIsNumber() throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {



        Class<?> expressionEvaluatorClass = ExpressionEvaluator.class;
        Method isNumberMethod = expressionEvaluatorClass.getDeclaredMethod("isNumber", String.class);
        isNumberMethod.setAccessible(true);

        // Test cases
        Assertions.assertTrue((boolean) isNumberMethod.invoke(null, "123"));
        Assertions.assertTrue((boolean) isNumberMethod.invoke(null, "-456"));
        Assertions.assertTrue((boolean) isNumberMethod.invoke(null, "0"));
        Assertions.assertTrue((boolean) isNumberMethod.invoke(null, "3.14"));

        Assertions.assertFalse((boolean) isNumberMethod.invoke(null, "abc"));
        Assertions.assertFalse((boolean) isNumberMethod.invoke(null, ""));
        Assertions.assertFalse((boolean) isNumberMethod.invoke(null, "12a"));
    }
}
