import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "LogINServlet", urlPatterns = {"/LogInServlet"})
public class LogINServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     //   response.getWriter().println("Du har ramt loginservletten");
        ServletContext servletContext = getServletContext();

        String navn = request.getParameter("navn");
        String kodeord = request.getParameter("kodeord");


        if( servletContext.getAttribute("brugerMap") == null){

            Map<String, String> brugerMap = new HashMap<>();

            brugerMap.put("test", "test");
            brugerMap.put("admin", "1234");

            servletContext.setAttribute("brugerMap", brugerMap);


        }

        if ( ((Map<String, String>)servletContext.getAttribute("brugerMap")).containsKey(navn) ){
            //todo gå til logIn side
            response.getWriter().println("bruger findes i databasen, hurra!");

        } else {
          //  response.getWriter().println("brugernavn findes ikke");
            request.setAttribute("besked", "Opret dig som ny bruger");
            request.getRequestDispatcher("WEB-INF/OpretBruger.jsp").forward(request, response);
        }

        if ( ((Map<String, String>)servletContext.getAttribute("brugerMap")).get(navn).equalsIgnoreCase(kodeord) ) {

            if (navn.equalsIgnoreCase("admin")) {
                //todo gå til adminside
                request.getRequestDispatcher("WEB-INF/Admin.jsp").forward(request, response);


            } else {
                //todo gå til IndkøbsListen
                response.getWriter().println("Du er logget ind");
                request.getRequestDispatcher("WEB-INF/HuskeListe.jsp").forward(request, response);
            }

        } else {

            // todo gå til login dvs index siden
            response.getWriter().println("brugernavn/kodeord findes ikke");
            request.setAttribute("besked", "det kode var forert, prøv igen");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
