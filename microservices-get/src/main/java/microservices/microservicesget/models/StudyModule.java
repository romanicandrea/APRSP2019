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
public class StudyModule implements Serializable {

    @Id
    @SequenceGenerator(name="STUDY_MODULE_ID_GENERATOR", sequenceName="STUDY_MODULE_SEQ", allocationSize = 1)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="STUDY_MODULE_ID_GENERATOR")
    private Long id;

    @NotBlank(message = "Study module title can not be blank.")
    @Column
    private String title;

    @NotBlank(message = "Study module abbreviation can not be blank.")
    @Column
    private String abbreviation;

    @OneToMany(mappedBy = "studyModule")
    @JsonIgnore
    private List<StudyGroup> studyGroups;

}