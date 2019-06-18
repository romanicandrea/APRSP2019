package microservices.microservicesget.models;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.Date;

@Data
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Student implements Serializable {

    @Id
    @SequenceGenerator(name="STUDENT_ID_GENERATOR", sequenceName="STUDENT_SEQ", allocationSize = 1)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="STUDENT_ID_GENERATOR")
    private Long id;

    @NotBlank(message = "Student first name can not be blank.")
    @Column
    private String firstName;

    @NotBlank(message = "Student last name can not be blank.")
    @Column
    private String lastName;

    @NotBlank(message = "Index number can not be blank.")
    @Column
    private String indexNum;

    @ManyToOne
    @JoinColumn
    private StudyGroup studyGroup;

    @ManyToOne
    @JoinColumn
    private StudyProject studyProject;
}