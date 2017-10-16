package lnulp.project.marketservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
	
	@Autowired
	private TestRepository testRepository;

	@GetMapping("test")
	public ResponseEntity<Test> getTest() {
		Test test = new Test();
		test.setId("1");
		test.setText("Hello World");
		return new ResponseEntity<>(test, HttpStatus.OK);
	}

	@PostMapping("test")
	public ResponseEntity<Void> createTest(@RequestBody Test test) {
		System.out.println(test.getId() + ": " + test.getText());
		testRepository.save(test);
		return new ResponseEntity<Void>(HttpStatus.I_AM_A_TEAPOT);
	}
}
