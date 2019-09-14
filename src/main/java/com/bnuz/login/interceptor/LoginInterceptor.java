package com.bnuz.login.interceptor;

import com.bnuz.login.enums.LoginEnum;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {

    /**
     *
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o 表示被拦截的请求的目标对象
     * @return 表示是否需要将当前请求拦截下来
     *          false:请求被终止
     *          true:请求会继续执行
     * @throws Exception
     */
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session = httpServletRequest.getSession();
        if(session.getAttribute("user")!=null){
            return true;
        }else{
            session.setAttribute("unlogin", LoginEnum.NON_LOGIN.getMsg());
            httpServletRequest.getRequestDispatcher("/index.jsp").forward(httpServletRequest,httpServletResponse);
            return false;
        }
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
