package microservices.microservicesget.repos;

import microservices.microservicesget.models.Student;
import microservices.microservicesget.models.StudyProject;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Collection;

public interface StudyProjectRepository extends JpaRepository<StudyProject, Long> {
    Collection<StudyProject> findByTitleContainingIgnoreCase (String title);

}
