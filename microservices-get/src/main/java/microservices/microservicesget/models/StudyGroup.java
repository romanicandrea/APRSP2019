package microservices.microservicesget.models;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class StudyGroup implements Serializable {

    @Id
    @SequenceGenerator(name="STUDY_GROUP_ID_GENERATOR", sequenceName="STUDY_GROUP_SEQ", allocationSize = 1)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="STUDY_GROUP_ID_GENERATOR")
    private Long id;

    @NotBlank(message = "Study group abbreviation can not be blank.")
    @Column
    private String abbreviation;

    @ManyToOne
    @JoinColumn
    private StudyModule studyModule;

    @OneToMany(mappedBy = "studyGroup")
    @JsonIgnore
    private List<Student> students;

}