package microservices.microservicesget.repos;

import microservices.microservicesget.models.Student;
import microservices.microservicesget.models.StudyModule;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Collection;

public interface StudyModuleRepository extends JpaRepository<StudyModule, Long> {
    Collection<StudyModule> findByTitleContainingIgnoreCase (String title);

}
