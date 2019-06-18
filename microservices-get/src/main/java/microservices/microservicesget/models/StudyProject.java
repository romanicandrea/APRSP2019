package microservices.microservicesget.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.List;

@Data
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class StudyProject implements Serializable {

    @Id
    @SequenceGenerator(name="STUDY_PROJECT_ID_GENERATOR", sequenceName="STUDY_PROJECT_SEQ", allocationSize = 1)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="STUDY_PROJECT_ID_GENERATOR")
    private Long id;

    @NotBlank(message = "Study module title can not be blank.")
    @Column
    private String title;

    @NotBlank(message = "Study group abbreviation can not be blank.")
    @Column
    private String abbreviation;

    @NotBlank(message = "Study group description can not be blank.")
    @Column
    private String description;

    @OneToMany(mappedBy = "studyGroup")
    @JsonIgnore
    private List<Student> students;

}