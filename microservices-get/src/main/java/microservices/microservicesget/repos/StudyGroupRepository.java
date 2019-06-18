package microservices.microservicesget.repos;

import microservices.microservicesget.models.Student;
import microservices.microservicesget.models.StudyGroup;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Collection;

public interface StudyGroupRepository extends JpaRepository<StudyGroup, Long> {
    Collection<StudyGroup> findByAbbreviationContainingIgnoreCase (String abbreviation);
}
