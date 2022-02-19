package controllers;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Letter;
import utils.DBUtil;

/**
 * Servlet implementation class EditsServlet
 */
@WebServlet("/edits")
public class EditsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     *
     */
    public EditsServlet() {
        super();
    }

    /**
     *
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

//        // 開くページ数を取得(デフォルトは1ページ目)
//        int page = 1;
//        try {
//            page = Integer.parseInt(request.getParameter("page"));
//        } catch (NumberFormatException e) {}
        List<Letter> letters = em.createNamedQuery("getAllLetters", Letter.class)
//                                   .setFirstResult(15 * (page - 1))
//                                   .setMaxResults(15)
                                   .getResultList();

        // 全件数を取得
        long letters_count = (long)em.createNamedQuery("getLettersCount", Long.class)
                                      .getSingleResult();

        em.close();

        request.setAttribute("letters", letters);
        request.setAttribute("letters_count", letters_count);
//        request.setAttribute("page", page);

        // フラッシュメッセージがセッションスコープにセットされていたら
        // リクエストスコープに保存する（セッションスコープからは削除）
        if (request.getSession().getAttribute("flush") != null) {
            request.setAttribute("flush", request.getSession().getAttribute("flush"));
            request.getSession().removeAttribute("flush");
        }

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/messages/edits.jsp");
        rd.forward(request, response);
}
}
