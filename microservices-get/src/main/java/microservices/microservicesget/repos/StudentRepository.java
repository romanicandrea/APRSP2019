package microservices.microservicesget.repos;

import microservices.microservicesget.models.Student;
import microservices.microservicesget.models.StudyGroup;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Collection;

public interface StudentRepository extends JpaRepository<Student, Long> {
    Collection<Student> findByIndexNumContainingIgnoreCase (String indexNum);

    Collection<StudyGroup> findByStudyGroup(StudyGroup p);
}
