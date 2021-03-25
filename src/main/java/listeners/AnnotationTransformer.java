package listeners;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

import org.testng.IAnnotationTransformer;
import org.testng.annotations.ITestAnnotation;

import helperMethods.ExcelUtils;

public class AnnotationTransformer implements IAnnotationTransformer {

//	@SuppressWarnings("rawtypes")
//	@Override
	public void transform(ITestAnnotation iTestAnnotation, Class aClass, Constructor constructor, Method method) {		
//		iTestAnnotation.setRetryAnalyzer(RetryAnalyser.class);
		try {
			if (ExcelUtils.getTetsCaseFlag(method.getDeclaringClass().toString().split(" ")[1]).equalsIgnoreCase("Yes")) {								
				iTestAnnotation.setEnabled(true);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
		
}