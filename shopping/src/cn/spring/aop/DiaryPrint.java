package cn.spring.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class DiaryPrint {

        @AfterThrowing(pointcut="execution(* cn.spring.controller..*(..))",throwing="ex")
        public void printException(JoinPoint jp,Object ex){
            String methodName=jp.getSignature().getName();
            System.out.println("$$$$$$$$$$$$$$$$$$"+methodName+" have a Problem "+ex+"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
        }
}
