/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.70
 * Generated at: 2023-01-27 02:16:49 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class joinAccept_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("jar:file:/C:/ThisIsJavaSecondEdition/eclipse-workspace/project3_team3/apache-tomcat-9_0_70/wtpwebapps/YKJK/WEB-INF/lib/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("jar:file:/C:/ThisIsJavaSecondEdition/eclipse-workspace/project3_team3/apache-tomcat-9_0_70/wtpwebapps/YKJK/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1674781393797L));
    _jspx_dependants.put("jar:file:/C:/ThisIsJavaSecondEdition/eclipse-workspace/project3_team3/apache-tomcat-9_0_70/wtpwebapps/YKJK/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width\" initial-scale=1.0>\r\n");
      out.write("    <title>가입 동의</title>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/jquery-3.6.0.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- css 링크 -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/joinAccept.css\" />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <form action=\"memberJoin.do\" id=\"joinForm\">\r\n");
      out.write("        <ul class=\"join_box\">\r\n");
      out.write("            <li class=\"checkBox check01\">\r\n");
      out.write("                <ul class=\"clearfix\">\r\n");
      out.write("                    <li>이용약관, 개인정보 수집 및 이용,\r\n");
      out.write("                        위치정보 이용약관(선택), 프로모션 안내\r\n");
      out.write("                        메일 수신(선택)에 모두 동의합니다.</li>\r\n");
      out.write("                    <li class=\"checkAllBtn\">\r\n");
      out.write("                        <input type=\"checkbox\" name=\"chkAll\" id=\"chkAll\" class=\"chkAll\">\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"checkBox check02\">\r\n");
      out.write("                <ul class=\"clearfix\">\r\n");
      out.write("                    <li>이용약관 동의(필수)</li>\r\n");
      out.write("                    <li class=\"checkBtn\">\r\n");
      out.write("                        <input type=\"checkbox\" name=\"chk1\"> \r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <textarea name=\"\" id=\"\">여러분을 환영합니다.\r\n");
      out.write("OOTD 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 OOTD 서비스의 이용과 관련하여 OOTD 서비스를 제공하는 OOTD 주식회사(이하 ‘OOTD’)와 이를 이용하는 OOTD 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 OOTD 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.\r\n");
      out.write("   </textarea>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"checkBox check03\">\r\n");
      out.write("                <ul class=\"clearfix\">\r\n");
      out.write("                    <li>개인정보 수집 및 이용에 대한 안내(필수)</li>\r\n");
      out.write("                    <li class=\"checkBtn\">\r\n");
      out.write("                        <input type=\"checkbox\" name=\"chk2\">\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("\r\n");
      out.write("                <textarea name=\"\" id=\"\">여러분을 환영합니다.\r\n");
      out.write("OOTD 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 OOTD 서비스의 이용과 관련하여 OOTD 서비스를 제공하는 OOTD 주식회사(이하 ‘OOTD’)와 이를 이용하는 OOTD 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 OOTD 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.\r\n");
      out.write("   </textarea>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"checkBox check03\">\r\n");
      out.write("                <ul class=\"clearfix\">\r\n");
      out.write("                    <li>위치정보 이용약관 동의(선택)</li>\r\n");
      out.write("                    <li class=\"checkBtn\">\r\n");
      out.write("                        <input type=\"checkbox\" name=\"chk3\">\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("\r\n");
      out.write("                <textarea name=\"\" id=\"\">여러분을 환영합니다.\r\n");
      out.write("OOTD 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 OOTD 서비스의 이용과 관련하여 OOTD 서비스를 제공하는 OOTD 주식회사(이하 ‘OOTD’)와 이를 이용하는 OOTD 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 OOTD 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.\r\n");
      out.write("   </textarea>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"checkBox check04\">\r\n");
      out.write("                <ul class=\"clearfix\">\r\n");
      out.write("                    <li>이벤트 등 프로모션 알림 메일 수신(선택)</li>\r\n");
      out.write("                    <li class=\"checkBtn\">\r\n");
      out.write("                        <input type=\"checkbox\" name=\"chk4\">\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("\r\n");
      out.write("            </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <ul class=\"footBtwrap clearfix\">\r\n");
      out.write("            <li><button type=\"button\" class=\"fpmgBt1\">비동의</button></li>\r\n");
      out.write("            <li><button type=\"button\" class=\"fpmgBt2\" onclick=\"goJoinPage();\">동의</button></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </form>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        // 동의 버튼 클릭 시, 체크 항목에 따른 기능 수행.\r\n");
      out.write("        function goJoinPage() {\r\n");
      out.write("\r\n");
      out.write("            // 필수 버튼 모두 클릭 시, 가입 페이지로 이동\r\n");
      out.write("            if($(\"input:checkbox[name=chk1]\").is(\":checked\") == true && $(\"input:checkbox[name=chk2]\").is(\":checked\") == true) {\r\n");
      out.write("            	location.href='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/member/memberJoin.do';\r\n");
      out.write("            }\r\n");
      out.write("            // 아닐 시, 경고창 팝업\r\n");
      out.write("            else \r\n");
      out.write("                alert('필수 항목에 체크하셔야 합니다.')\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        // 전체 체크 코드\r\n");
      out.write("        $('#chkAll').click(function() {\r\n");
      out.write("            var checked = $('#chkAll').is(':checked');\r\n");
      out.write("\r\n");
      out.write("            // 체크할 시, 전체 체크\r\n");
      out.write("            if(checked)\r\n");
      out.write("                $('input:checkbox').prop('checked', true);\r\n");
      out.write("            // 체크 해제 시, 전체 체크 해제\r\n");
      out.write("            else\r\n");
      out.write("                $('input:checkbox').prop('checked', false);\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("    </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}