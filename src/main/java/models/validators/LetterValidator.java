package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Letter;

public class LetterValidator {
    // バリデーションを実行する
    public static List<String> validate(Letter l){
        List<String> errors = new ArrayList<String>();

        String user_error = validateUser(l.getUser());
        if (!user_error.equals("")) {
            errors.add(user_error);
        }

        String content_error = validateContent(l.getContent());
        if (!content_error.equals("")) {
            errors.add(content_error);
        }

        return errors;
    }

    // タイトルの必須入力チェック
    private static String validateUser(String user) {
        if (user == null || user.equals("")) {
            return "ユーザ名を入力してください。";
        }

        return "";
    }

    private static String validateContent(String content) {
        if (content == null || content.equals("")) {
            return "メッセージを入力してください。";
        }

        return "";
    }
}
