package models;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@NamedQueries({
    @NamedQuery(
        name = "getAllLetters",
        query = "SELECT l FROM Letter AS l ORDER BY l.id ASC"
    ),
    @NamedQuery(
        name = "getLettersCount",
        query = "SELECT COUNT(l) FROM Letter AS l"
    )
})
@Table(name = "letters")
public class Letter {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "user", length = 255, nullable = false)
    private String user;

    @Column(name = "content", length = 450, nullable = false)
    private String content;

    @Column(name = "release_date", nullable = true)
    private Timestamp release_date;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getRelease_date() {
        return release_date;
    }

    public void setRelease_date(Timestamp release_date) {
        this.release_date = release_date;
    }

}
