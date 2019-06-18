package microservices.microservicesget.controllers;


import java.util.Collection;
import java.util.List;

import microservices.microservicesget.models.Student;
import microservices.microservicesget.models.StudyGroup;
import microservices.microservicesget.models.StudyModule;
import microservices.microservicesget.models.StudyProject;
import microservices.microservicesget.repos.StudentRepository;
import microservices.microservicesget.repos.StudyGroupRepository;
import microservices.microservicesget.repos.StudyModuleRepository;
import microservices.microservicesget.repos.StudyProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GetRESTController {
    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private StudyGroupRepository studyGroupRepository;

    @Autowired
    private StudyModuleRepository studyModuleRepository;

    @Autowired
    private StudyProjectRepository studyProjectRepository;

    @GetMapping("students")
    public Collection<Student> getStudents(){
        return studentRepository.findAll();
    }

    @GetMapping("student/{id}")
    public Student getStudent(@PathVariable ("id") Long id){
        return studentRepository.getOne(id);

    }

    @GetMapping("studentIndex/{indexNum}")
    public Collection<Student> getStudentByIndexNum(@PathVariable ("indexNum") String indexNum){
        return studentRepository.findByIndexNumContainingIgnoreCase(indexNum);
    }

    @GetMapping("studentStudyGroup/{studyGroup}")
    public Collection<StudyGroup> getStudentByIndex(@PathVariable ("studyGroup") StudyGroup studyGroup){
        return studentRepository.findByStudyGroup(studyGroup);
    }

    @GetMapping("studyProjects")
    public Collection<StudyProject> getStudyProject(){
        return studyProjectRepository.findAll();
    }

    @GetMapping("studyProject/{id}")
    public ResponseEntity<StudyProject> getStudyProject(@PathVariable("id") Long id){
        StudyProject studyProject = studyProjectRepository.getOne(id);
        return new ResponseEntity<StudyProject>(studyProject,HttpStatus.OK);
    }

    @GetMapping("studyProjectTitle/{title}")
    public Collection<StudyProject> getStudyProject(@PathVariable("title") String title){
        return studyProjectRepository.findByTitleContainingIgnoreCase(title);
    }

    @GetMapping("studyModules")
    public Collection<StudyModule> getStudyModules(){
        return studyModuleRepository.findAll();
    }

    @GetMapping("studyModule/{id}")
    public ResponseEntity<StudyModule> getStudyModule(@PathVariable("id") Long id){
        StudyModule studyModule = studyModuleRepository.getOne(id);
        return new ResponseEntity<StudyModule>(studyModule,HttpStatus.OK);
    }

    @GetMapping("studyModuleTitle/{title}")
    public Collection<StudyModule> getStudyModule(@PathVariable("title") String title){
        return studyModuleRepository.findByTitleContainingIgnoreCase(title);
    }

    @GetMapping("studyGroups")
    public Collection<StudyGroup> getStudyGroups(){
        return studyGroupRepository.findAll();
    }

    @GetMapping("studyGroup/{id}")
    public ResponseEntity<StudyGroup> getStudyGroup(@PathVariable("id") Long id){
        StudyGroup studyGroup = studyGroupRepository.getOne(id);
        return new ResponseEntity<StudyGroup>(studyGroup,HttpStatus.OK);
    }

    @GetMapping("studyModuleAbbreviation/{abbreviation}")
    public Collection<StudyGroup> getStudyGroup(@PathVariable("abbreviation") String abbreviation){
        return studyGroupRepository.findByAbbreviationContainingIgnoreCase(abbreviation);
    }
}
